.class Lyuanwow/foxr/starter/ui/s$100000016;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000016"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000016$100000015;
    }
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000016;->val$c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 608
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000016;->val$c:Landroid/app/Activity;

    const v0, 0x10302d1

    invoke-direct {p1, p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p2, "\u8b66\u544a\uff0c\u672c\u529f\u80fd\u53ea\u662f\u8d77\u5230\u81ea\u6211\u76d1\u7763\u4f5c\u7528\uff0c\u4ec5\u4f9b\u53c2\u8003\u3002\u5982\u679c\u4f60\u4e0d\u77e5\u9053\u4f60\u5728\u505a\u4ec0\u4e48\uff0c\u8bf7\u70b9\u51fb\u53d6\u6d88\u3002"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "\u5426"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lyuanwow/foxr/starter/ui/s$100000016$100000015;

    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000016;->val$c:Landroid/app/Activity;

    invoke-direct {p2, p0, v0}, Lyuanwow/foxr/starter/ui/s$100000016$100000015;-><init>(Lyuanwow/foxr/starter/ui/s$100000016;Landroid/app/Activity;)V

    const-string v0, "\u662f"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
