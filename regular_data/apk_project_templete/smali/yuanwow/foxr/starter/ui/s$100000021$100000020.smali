.class Lyuanwow/foxr/starter/ui/s$100000021$100000020;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000021;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000020"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;
    }
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000021;

.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000021;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020;->this$0:Lyuanwow/foxr/starter/ui/s$100000021;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020;->val$c:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000021$100000020;)Lyuanwow/foxr/starter/ui/s$100000021;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020;->this$0:Lyuanwow/foxr/starter/ui/s$100000021;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 649
    const-string v0, "filech2_0"

    const-string v1, "filech2_1"

    const-string v2, "filech2_4"

    const-string v3, "filech2_9"

    const-string v4, "filech3_0"

    const-string v5, "filech3_1"

    const-string v6, "filech3_2"

    const-string v7, "filech3_5"

    const-string v8, "filech3_9"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 660
    :goto_0
    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 662
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020;->val$c:Landroid/app/Activity;

    const-string v2, "dr.ini"

    invoke-static {v0, v2, v2}, Lyuanwow/foxr/starter/ui/s;->access$1000016(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020;->val$c:Landroid/app/Activity;

    const v3, 0x10302d1

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "\u91cd\u65b0\u542f\u52a8\u5e94\u7528\u7a0b\u5e8f\u540e\u8865\u4e01\u751f\u6548\uff0c\u662f\u5426\u7acb\u5373\u91cd\u542f\uff1f"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "\u5426"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;

    iget-object v2, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020;->val$c:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lyuanwow/foxr/starter/ui/s$100000021$100000020$100000019;-><init>(Lyuanwow/foxr/starter/ui/s$100000021$100000020;Landroid/app/Activity;)V

    const-string v2, "\u662f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 649
    :cond_0
    aget-object v3, v0, v2

    .line 660
    iget-object v4, p0, Lyuanwow/foxr/starter/ui/s$100000021$100000020;->val$c:Landroid/app/Activity;

    invoke-static {v4, v3, v3}, Lyuanwow/foxr/starter/ui/s;->access$1000016(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
