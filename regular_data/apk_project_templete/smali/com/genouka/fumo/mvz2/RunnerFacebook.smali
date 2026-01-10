.class public Lcom/genouka/fumo/mvz2/RunnerFacebook;
.super Ljava/lang/Object;
.source "RunnerFacebook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CheckPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "_permission"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 41
    new-array v0, v5, [Ljava/lang/Object;

    .line 42
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 44
    const-string v3, "FacebookExtension"

    const-string v4, "CheckPermission"

    invoke-static {v3, v4, v5, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "ret":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "ret":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 46
    .local v1, "bret":Z
    return v1
.end method

.method public RequestPermissions([Ljava/lang/String;Z)I
    .locals 5
    .param p1, "_permissions"    # [Ljava/lang/String;
    .param p2, "_bPublishPermission"    # Z

    .prologue
    const/4 v4, 0x2

    .line 54
    new-array v0, v4, [Ljava/lang/Object;

    .line 55
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 56
    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 58
    const-string v2, "FacebookExtension"

    const-string v3, "RequestPermissions"

    invoke-static {v2, v3, v4, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    .local v1, "retval":I
    return v1
.end method

.method public dialog(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "dialogType"    # Ljava/lang/String;
    .param p2, "keyValuePairs"    # [Ljava/lang/String;
    .param p3, "dsMapResponse"    # I

    .prologue
    const/4 v3, 0x3

    .line 104
    new-array v0, v3, [Ljava/lang/Object;

    .line 105
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 106
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 107
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 110
    const-string v1, "FacebookExtension"

    const-string v2, "dialog"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public facebookLoginStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    const-string v0, "FacebookExtension"

    const-string v1, "facebookLoginStatus"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    const-string v0, "FacebookExtension"

    const-string v1, "getAccessToken"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    const-string v0, "FacebookExtension"

    const-string v1, "getUserId"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public graphRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "_graphPath"    # Ljava/lang/String;
    .param p2, "_httpMethod"    # Ljava/lang/String;
    .param p3, "_keyValuePairs"    # [Ljava/lang/String;
    .param p4, "_dsMapResponse"    # I

    .prologue
    const/4 v3, 0x4

    .line 91
    new-array v0, v3, [Ljava/lang/Object;

    .line 92
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 93
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 94
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 95
    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    const-string v1, "FacebookExtension"

    const-string v2, "graphRequest"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public initFacebook(Ljava/lang/String;)V
    .locals 4
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 12
    new-array v0, v3, [Ljava/lang/Object;

    .line 13
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 15
    const-string v1, "FacebookExtension"

    const-string v2, "initFacebook"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public inviteDialog(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "dialogType"    # Ljava/lang/String;
    .param p2, "keyValuePairs"    # [Ljava/lang/String;
    .param p3, "dsMapResponse"    # I

    .prologue
    const/4 v3, 0x3

    .line 117
    new-array v0, v3, [Ljava/lang/Object;

    .line 118
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 119
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 120
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 123
    const-string v1, "FacebookExtension"

    const-string v2, "inviteDialog"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public logout()V
    .locals 4

    .prologue
    .line 86
    const-string v0, "FacebookExtension"

    const-string v1, "logout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x3

    .line 65
    new-array v0, v3, [Ljava/lang/Object;

    .line 66
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 70
    const-string v1, "FacebookExtension"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 76
    const-string v0, "FacebookExtension"

    const-string v1, "onResume"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setupFacebook([Ljava/lang/String;)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 31
    new-array v0, v3, [Ljava/lang/Object;

    .line 32
    .local v0, "argArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 35
    const-string v1, "FacebookExtension"

    const-string v2, "setupFacebook"

    invoke-static {v1, v2, v3, v0}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
