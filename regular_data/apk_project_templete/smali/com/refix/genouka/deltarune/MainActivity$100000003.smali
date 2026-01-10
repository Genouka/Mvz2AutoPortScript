.class Lcom/refix/genouka/deltarune/MainActivity$100000003;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/refix/genouka/deltarune/MainActivity;


# direct methods
.method constructor <init>(Lcom/refix/genouka/deltarune/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$100000003;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-void
.end method

.method static access$0(Lcom/refix/genouka/deltarune/MainActivity$100000003;)Lcom/refix/genouka/deltarune/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000003;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

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

    .line 155
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000003;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf9f

    invoke-virtual {v0, v1, v2}, Lcom/refix/genouka/deltarune/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
