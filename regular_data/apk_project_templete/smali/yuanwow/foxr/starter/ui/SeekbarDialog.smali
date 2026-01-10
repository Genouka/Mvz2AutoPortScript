.class public Lyuanwow/foxr/starter/ui/SeekbarDialog;
.super Ljava/lang/Object;
.source "SeekbarDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;,
        Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;,
        Lyuanwow/foxr/starter/ui/SeekbarDialog$100000000;,
        Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;,
        Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;,
        Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;IILyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;",
            ")V"
        }
    .end annotation

    .line 27
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    const/16 v1, 0x32

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 32
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const/16 v2, 0x12

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 41
    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 42
    new-instance p2, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000000;

    invoke-direct {p2, v1}, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000000;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance p2, Landroid/app/AlertDialog$Builder;

    const p3, 0x10302d1

    invoke-direct {p2, p0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;

    invoke-direct {p1, p4, v2}, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;-><init>(Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;Landroid/widget/SeekBar;)V

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Landroid/content/DialogInterface$OnClickListener;

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showFloat(Landroid/content/Context;Ljava/lang/String;FFFILyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "FFFI",
            "Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;",
            ")V"
        }
    .end annotation

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    const/16 v1, 0x32

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 79
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/16 v2, 0x12

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    new-instance v6, Landroid/widget/SeekBar;

    invoke-direct {v6, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v6, p5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 88
    sub-float/2addr p2, p3

    sub-float v2, p4, p3

    div-float/2addr p2, v2

    int-to-float v2, p5

    mul-float p2, p2, v2

    float-to-int p2, p2

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    new-instance p2, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;

    invoke-direct {p2, v1, p3, p5, p4}, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;-><init>(Landroid/widget/TextView;FIF)V

    invoke-virtual {v6, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance p2, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d1

    invoke-direct {p2, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;

    move-object v3, p1

    move-object v4, p6

    move v5, p3

    move v7, p5

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;-><init>(Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;FLandroid/widget/SeekBar;IF)V

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Landroid/content/DialogInterface$OnClickListener;

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
