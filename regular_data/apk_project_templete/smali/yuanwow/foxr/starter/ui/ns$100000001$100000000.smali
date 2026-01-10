.class Lyuanwow/foxr/starter/ui/ns$100000001$100000000;
.super Ljava/lang/Object;
.source "ns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/ns$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/ns$100000001;

.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$outputDir:Ljava/io/File;

.field private final synthetic val$success:Z


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/ns$100000001;ZLandroid/app/Activity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->this$0:Lyuanwow/foxr/starter/ui/ns$100000001;

    iput-boolean p2, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->val$success:Z

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->val$c:Landroid/app/Activity;

    iput-object p4, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->val$outputDir:Ljava/io/File;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/ns$100000001$100000000;)Lyuanwow/foxr/starter/ui/ns$100000001;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->this$0:Lyuanwow/foxr/starter/ui/ns$100000001;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 40
    iget-boolean v0, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->val$success:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->val$c:Landroid/app/Activity;

    iget-object v1, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->val$outputDir:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lyuanwow/foxr/starter/ui/ns;->access$1000005(Landroid/app/Activity;Ljava/io/File;Z)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/ns$100000001$100000000;->val$c:Landroid/app/Activity;

    const-string v1, "\u672a\u627e\u5230\u6570\u636e\u6587\u4ef6"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
