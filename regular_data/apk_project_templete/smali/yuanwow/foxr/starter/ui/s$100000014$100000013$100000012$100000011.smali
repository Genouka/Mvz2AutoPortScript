.class Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000011"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;
    }
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012;

.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;->this$0:Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;->val$c:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;)Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;->this$0:Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 580
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;->val$c:Landroid/app/Activity;

    new-instance p2, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;

    invoke-direct {p2, p0, p1}, Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011$100000010;-><init>(Lyuanwow/foxr/starter/ui/s$100000014$100000013$100000012$100000011;Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
