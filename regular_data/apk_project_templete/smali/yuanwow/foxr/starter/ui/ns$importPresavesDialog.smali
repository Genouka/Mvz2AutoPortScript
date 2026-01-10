.class Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;
.super Ljava/lang/Object;
.source "ns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "importPresavesDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;,
        Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000007;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private checked:I

.field private final this$0:Lyuanwow/foxr/starter/ui/ns;


# direct methods
.method public constructor <init>(Lyuanwow/foxr/starter/ui/ns;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;->this$0:Lyuanwow/foxr/starter/ui/ns;

    const/4 p1, 0x0

    iput p1, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;->checked:I

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;)Lyuanwow/foxr/starter/ui/ns;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;->this$0:Lyuanwow/foxr/starter/ui/ns;

    return-object p0
.end method

.method static synthetic access$L1000009(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;)I
    .locals 0

    iget p0, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;->checked:I

    return p0
.end method

.method static synthetic access$S1000009(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;I)V
    .locals 0

    iput p1, p0, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;->checked:I

    return-void
.end method


# virtual methods
.method public importPresavesDialog(Landroid/app/Activity;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePathFile()Ljava/io/File;

    .line 166
    const/16 p2, 0xc

    new-array v0, p2, [Ljava/lang/String;

    .line 167
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p2, :cond_0

    .line 170
    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v2, 0x10302d1

    invoke-direct {v0, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 173
    const-string p1, "\u9009\u62e9\u5bfc\u5165\u7684\u69fd\u4f4d"

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 174
    new-instance p1, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;

    invoke-direct {p1, p0}, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000006;-><init>(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;)V

    invoke-virtual {v0, p2, v1, p1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    new-instance p1, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000007;

    invoke-direct {p1, p0}, Lyuanwow/foxr/starter/ui/ns$importPresavesDialog$100000007;-><init>(Lyuanwow/foxr/starter/ui/ns$importPresavesDialog;)V

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    move-object p1, p2

    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    const-string p1, "\u53d6\u6d88"

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 168
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\u7b2c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    div-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\u7ae0\u7b2c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    rem-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\u69fd\u4f4d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
