.class Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000010"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;

.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;->this$0:Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;->val$c:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;)Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;->this$0:Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 583
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;->val$c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
