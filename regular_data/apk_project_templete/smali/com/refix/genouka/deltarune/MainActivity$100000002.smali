.class Lcom/refix/genouka/deltarune/MainActivity$100000002;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/refix/genouka/deltarune/MainActivity;


# direct methods
.method constructor <init>(Lcom/refix/genouka/deltarune/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$100000002;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-void
.end method

.method static access$0(Lcom/refix/genouka/deltarune/MainActivity$100000002;)Lcom/refix/genouka/deltarune/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity$100000002;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$100000002;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-virtual {p1}, Lcom/refix/genouka/deltarune/MainActivity;->finish()V

    return-void
.end method
