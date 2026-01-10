.class Lcom/refix/genouka/deltarune/MainActivity$and$100000007;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/MainActivity$and;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lcom/refix/genouka/deltarune/MainActivity$and;


# direct methods
.method constructor <init>(Lcom/refix/genouka/deltarune/MainActivity$and;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$and$100000007;->this$0:Lcom/refix/genouka/deltarune/MainActivity$and;

    return-void
.end method

.method static access$0(Lcom/refix/genouka/deltarune/MainActivity$and$100000007;)Lcom/refix/genouka/deltarune/MainActivity$and;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity$and$100000007;->this$0:Lcom/refix/genouka/deltarune/MainActivity$and;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and$100000007;->this$0:Lcom/refix/genouka/deltarune/MainActivity$and;

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity$and;->access$0(Lcom/refix/genouka/deltarune/MainActivity$and;)Lcom/refix/genouka/deltarune/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity;->access$L1000000(Lcom/refix/genouka/deltarune/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_asset/deltarune4/about.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
