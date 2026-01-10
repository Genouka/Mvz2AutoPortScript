.class Lyuanwow/foxr/starter/ui/s$100000029;
.super Landroid/widget/ArrayAdapter;
.source "s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000029"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lyuanwow/foxr/starter/ui/s$100000029;->val$keys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1126
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1127
    const/16 p3, 0xc

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1128
    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000029;->val$keys:[Ljava/lang/String;

    aget-object p1, p3, p1

    const-string p3, "\u5373\u65f6\u5b58\u6863"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1129
    const p1, -0x777778

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1131
    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1133
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1135
    return-object p2
.end method
