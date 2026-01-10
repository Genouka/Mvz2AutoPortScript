.class Lyuanwow/foxr/starter/ui/s$100000031;
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
    name = "100000031"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000031$100000030;
    }
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000031;->val$c:Landroid/app/Activity;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000031;->val$items:Ljava/util/List;

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

    .line 1154
    sget-object p1, Lorg/hndteam/deltarune/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance p2, Lyuanwow/foxr/starter/ui/s$100000031$100000030;

    iget-object p4, p0, Lyuanwow/foxr/starter/ui/s$100000031;->val$c:Landroid/app/Activity;

    iget-object p5, p0, Lyuanwow/foxr/starter/ui/s$100000031;->val$items:Ljava/util/List;

    invoke-direct {p2, p0, p4, p5, p3}, Lyuanwow/foxr/starter/ui/s$100000031$100000030;-><init>(Lyuanwow/foxr/starter/ui/s$100000031;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
