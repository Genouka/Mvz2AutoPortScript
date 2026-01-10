.class Lyuanwow/foxr/starter/ui/ns$100000004;
.super Ljava/lang/Object;
.source "ns.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$directory:Ljava/io/File;

.field private final synthetic val$items:[Ljava/lang/String;

.field private final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Ljava/io/File;[Ljava/lang/String;Landroid/app/Activity;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$directory:Ljava/io/File;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$items:[Ljava/lang/String;

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$c:Landroid/app/Activity;

    iput-object p4, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 97
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$directory:Ljava/io/File;

    iget-object p4, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$items:[Ljava/lang/String;

    aget-object p3, p4, p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    nop

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 102
    :goto_0
    array-length p5, p2

    if-lt p4, p5, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    .line 99
    :cond_0
    aget-object p5, p2, p4

    .line 100
    invoke-virtual {p5}, Ljava/io/File;->isDirectory()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 101
    nop

    .line 102
    const/4 p2, 0x0

    .line 105
    :goto_1
    if-eqz p2, :cond_1

    .line 106
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$c:Landroid/app/Activity;

    invoke-static {p2, p1}, Lyuanwow/foxr/starter/ui/ns;->access$1000007(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_2

    .line 108
    :cond_1
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$c:Landroid/app/Activity;

    invoke-static {p2, p1, p3}, Lyuanwow/foxr/starter/ui/ns;->access$1000005(Landroid/app/Activity;Ljava/io/File;Z)V

    .line 110
    :goto_2
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/ns$100000004;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/SlideAnimation;->dismissPopupWithAnimation(Landroid/widget/PopupWindow;)V

    return-void

    .line 102
    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method
