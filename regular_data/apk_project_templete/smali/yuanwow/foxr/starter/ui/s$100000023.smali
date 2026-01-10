.class Lyuanwow/foxr/starter/ui/s$100000023;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000023"
.end annotation


# instance fields
.field private final synthetic val$addleftshift:Z

.field private final synthetic val$down:Z

.field private final synthetic val$up:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyuanwow/foxr/starter/ui/s$100000023;->val$down:Z

    iput-boolean p2, p0, Lyuanwow/foxr/starter/ui/s$100000023;->val$addleftshift:Z

    iput-boolean p3, p0, Lyuanwow/foxr/starter/ui/s$100000023;->val$up:Z

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

    .line 737
    iget-boolean p1, p0, Lyuanwow/foxr/starter/ui/s$100000023;->val$down:Z

    const/4 p2, 0x0

    const/16 p4, 0x101

    if-eqz p1, :cond_0

    .line 738
    invoke-static {p2, p3, p3, p4}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 739
    :cond_0
    iget-boolean p1, p0, Lyuanwow/foxr/starter/ui/s$100000023;->val$addleftshift:Z

    const/16 p5, 0x10

    if-eqz p1, :cond_1

    .line 740
    invoke-static {p2, p5, p5, p4}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 742
    :cond_1
    iget-boolean p1, p0, Lyuanwow/foxr/starter/ui/s$100000023;->val$up:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 743
    invoke-static {p2, p3, p3, p4}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 744
    :cond_2
    iget-boolean p1, p0, Lyuanwow/foxr/starter/ui/s$100000023;->val$addleftshift:Z

    if-eqz p1, :cond_3

    .line 745
    invoke-static {p2, p5, p5, p4}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    :cond_3
    return-void
.end method
