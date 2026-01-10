.class Lcom/genouka/fumo/mvz2/RunnerActivity$7;
.super Ljava/lang/Object;
.source "RunnerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerActivity;->createDialog(II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

.field final synthetic val$helpUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerActivity;

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$7;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    iput-object p2, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$7;->val$helpUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1919
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$7;->val$helpUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1920
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$7;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v1, v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1921
    return-void
.end method
