.class Lcom/genouka/fumo/mvz2/RunnerActivity$5;
.super Ljava/lang/Object;
.source "RunnerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerActivity;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1148
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->ExitApplication()V

    .line 1149
    return-void
.end method
