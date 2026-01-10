.class Lyuanwow/foxr/starter/ui/ns$100000005;
.super Ljava/lang/Object;
.source "ns.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$directory:Ljava/io/File;

.field private final synthetic val$savedir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/ns$100000005;->val$c:Landroid/app/Activity;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/ns$100000005;->val$directory:Ljava/io/File;

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/ns$100000005;->val$savedir:Ljava/io/File;

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

    .line 144
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/ns$100000005;->val$c:Landroid/app/Activity;

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/ns$100000005;->val$directory:Ljava/io/File;

    iget-object v0, p0, Lyuanwow/foxr/starter/ui/ns$100000005;->val$savedir:Ljava/io/File;

    invoke-static {p1, p2, v0}, Lyuanwow/foxr/starter/ui/ns;->access$1000008(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
