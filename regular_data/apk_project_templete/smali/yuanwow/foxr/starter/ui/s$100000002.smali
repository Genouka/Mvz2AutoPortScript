.class Lyuanwow/foxr/starter/ui/s$100000002;
.super Landroid/widget/ArrayAdapter;
.source "s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 235
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 237
    const/4 p3, 0x6

    if-ge p1, p3, :cond_0

    .line 238
    const/16 p1, 0xc4

    const/16 p3, 0xbb

    const/16 v0, 0xd7

    invoke-static {v0, p1, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 239
    :cond_0
    const/4 p3, 0x7

    if-ge p1, p3, :cond_1

    .line 240
    const/16 p1, 0xb8

    const/16 p3, 0x8a

    const/16 v0, 0xec

    invoke-static {v0, p1, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 241
    :cond_1
    const/16 p3, 0xc

    const/16 v0, 0xb2

    if-ge p1, p3, :cond_2

    .line 242
    const/16 p1, 0x58

    const/16 p3, 0xdc

    invoke-static {p1, v0, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 243
    :cond_2
    const/16 p3, 0xe

    if-ge p1, p3, :cond_3

    .line 244
    const/16 p1, 0x8f

    const/16 p3, 0xce

    invoke-static {v0, p1, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 246
    :cond_3
    const/16 p1, 0x30

    const/16 p3, 0x15

    const/16 v0, 0xe8

    invoke-static {v0, p1, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 250
    const/16 p1, 0x20

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    return-object p2
.end method
