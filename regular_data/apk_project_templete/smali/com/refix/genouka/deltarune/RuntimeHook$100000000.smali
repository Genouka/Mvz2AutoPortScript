.class Lcom/refix/genouka/deltarune/RuntimeHook$100000000;
.super Ljava/lang/Object;
.source "RuntimeHook.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/RuntimeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/RuntimeHook$100000000;->val$activity:Landroid/app/Activity;

    return-void
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

    .line 14
    iget-object p1, p0, Lcom/refix/genouka/deltarune/RuntimeHook$100000000;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/refix/genouka/deltarune/RuntimeHook;->showSoftKeyboard(Landroid/app/Activity;)V

    return-void
.end method
