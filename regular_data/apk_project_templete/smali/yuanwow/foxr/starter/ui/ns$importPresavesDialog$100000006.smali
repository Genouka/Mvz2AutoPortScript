.class Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;
.super Ljava/lang/Object;
.source "ns.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;->this$0:Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;)Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;->this$0:Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 177
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;->this$0:Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;

    invoke-static {p1, p2}, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;->access$S1000009(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;I)V

    return-void
.end method
