.class Lyuanwow/foxr/starter/ui/s$100000027$100000025;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000027;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000025"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000027;

.field private final synthetic val$filePath:Ljava/lang/String;

.field private final synthetic val$iniUtils:Lyuanwow/foxr/starter/ui/IniUtils;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000027;Lyuanwow/foxr/starter/ui/IniUtils;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027$100000025;->this$0:Lyuanwow/foxr/starter/ui/s$100000027;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000027$100000025;->val$iniUtils:Lyuanwow/foxr/starter/ui/IniUtils;

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000027$100000025;->val$filePath:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000027$100000025;)Lyuanwow/foxr/starter/ui/s$100000027;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000027$100000025;->this$0:Lyuanwow/foxr/starter/ui/s$100000027;

    return-object p0
.end method


# virtual methods
.method public onValueSelected(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 964
    :try_start_0
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000027$100000025;->val$iniUtils:Lyuanwow/foxr/starter/ui/IniUtils;

    const-string v1, "game"

    const-string v2, "fps"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027$100000025;->val$iniUtils:Lyuanwow/foxr/starter/ui/IniUtils;

    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000027$100000025;->val$filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lyuanwow/foxr/starter/ui/IniUtils;->save(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 967
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 969
    :goto_0
    nop

    .line 970
    const/4 p1, 0x0

    const/16 v0, 0x39

    const/16 v1, 0x101

    invoke-static {p1, v0, v0, v1}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 971
    const/4 p1, 0x1

    invoke-static {p1, v0, v0, v1}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    return-void
.end method
