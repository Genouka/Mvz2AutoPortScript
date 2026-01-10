.class public Lcom/genouka/fumo/mvz2/RunnerAdExt;
.super Ljava/lang/Object;
.source "RunnerAdExt.java"

# interfaces
.implements Lcom/genouka/fumo/mvz2/IAdExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable(I)V
    .locals 0
    .param p1, "_index"    # I

    .prologue
    .line 29
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public enable(III)V
    .locals 0
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_index"    # I

    .prologue
    .line 27
    return-void
.end method

.method public event(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ident"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public getAdDisplayHeight(I)I
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getAdDisplayWidth(I)I
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public move(III)V
    .locals 0
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_index"    # I

    .prologue
    .line 28
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 36
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 23
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 25
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 43
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
