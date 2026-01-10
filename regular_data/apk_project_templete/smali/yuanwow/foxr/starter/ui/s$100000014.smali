.class Lyuanwow/foxr/starter/ui/s$100000014;
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
    name = "100000014"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000014$100000013;
    }
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000014;->val$c:Landroid/app/Activity;

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

    .line 554
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000014;->val$c:Landroid/app/Activity;

    const v0, 0x10302d1

    invoke-direct {p1, p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p2, "\u5341\u7ea7\u8b66\u544a\uff01\n\n\u4f60\u6781\u6709\u53ef\u80fd\u3016\u4e0d\u9700\u8981\u3017\u8fd9\u4e2a\u529f\u80fd\uff0c\u5982\u679c\u4f60\u4e0d\u786e\u5b9a\u81ea\u5df1\u662f\u5426\u9700\u8981\u8fd9\u4e2a\u529f\u80fd\uff0c\u90a3\u4e48\u4f60\u80af\u5b9a\u4e0d\u9700\u8981\uff0c\u8bf7\u70b9\u51fb\u53d6\u6d88\u6309\u952e\uff01\n\n\u662f\u5426\u786e\u8ba4\u8981\u6253\u5165\u8865\u4e01\uff1f\u4f7f\u7528\u5916\u7f6e\u952e\u76d8\u3001\u624b\u67c4\u3016\u4e0d\u9700\u8981\u3017\u6253\u5165\u672c\u8865\u4e01\u3001\u53ea\u6709\u4f7f\u7528\u5916\u7f6e\u8f6f\u952e\u76d8\u8fdb\u884c\u6e38\u620f\u9700\u8981\u8fd9\u4e2a\u914d\u7f6e\uff0c\u8bf7\u4e0d\u8981\u4e71\u70b9\uff0c\u5426\u5219\u53ef\u80fd\u4f1a\u9020\u6210\u4f60\u65e0\u6cd5\u6b63\u5e38\u5524\u51fa\u83dc\u5355\u7b49\u952e\u4f4d\u9519\u4e71\u7684\u95ee\u9898\uff01\n\n\u5982\u679c\u4f60\u6253\u5165\u8865\u4e01\u9047\u5230\u4e86\u9519\u8bef\u8bf7\u4e0d\u8981\u53cd\u9988\uff0c\u53ef\u4ee5\u5c1d\u8bd5\u83dc\u5355\u7684\u3016\u6309\u952e\u4fee\u590d\u3017\u6309\u94ae"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lyuanwow/foxr/starter/ui/s$100000014$100000013;

    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000014;->val$c:Landroid/app/Activity;

    invoke-direct {p2, p0, v0}, Lyuanwow/foxr/starter/ui/s$100000014$100000013;-><init>(Lyuanwow/foxr/starter/ui/s$100000014;Landroid/app/Activity;)V

    const-string v0, "\u575a\u6301\u786e\u5b9a"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 595
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
