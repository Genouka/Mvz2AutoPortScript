.class Lyuanwow/foxr/starter/ui/s$100000027;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000027"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/s$100000027$100000025;,
        Lyuanwow/foxr/starter/ui/s$100000027$100000026;
    }
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 839
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "/Game_FPS.ini"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 840
    const/16 p2, 0x39

    const-string p4, "\""

    const/16 p5, 0x1e

    const-string v0, ""

    const-string v1, "fps"

    const-string v2, "game"

    const/16 v3, 0x101

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_f

    .line 1044
    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    const p3, 0x10302d1

    invoke-direct {p1, p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p2, "\u786e\u5b9a\u8981\u540c\u6b65\u5417\uff1f\u3010\u672c\u529f\u80fd\u4e3a\u5df2\u7ecf\u5e9f\u5f03\u7684\u529f\u80fd\uff0c\u9664\u975e\u4f60\u786e\u5b9a\u81ea\u5df1\u5728\u505a\u4ec0\u4e48\uff0c\u5426\u5219\u8bf7\u4e0d\u8981\u4f7f\u7528\u3002\u3011"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Landroid/content/DialogInterface$OnClickListener;

    const-string p3, "\u5426"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lyuanwow/foxr/starter/ui/s$100000027$100000026;

    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    invoke-direct {p2, p0, p3}, Lyuanwow/foxr/starter/ui/s$100000027$100000026;-><init>(Lyuanwow/foxr/starter/ui/s$100000027;Landroid/app/Activity;)V

    const-string p3, "\u662f"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1050
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1051
    goto/16 :goto_f

    .line 1037
    :pswitch_1
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 1038
    nop

    .line 1039
    const/16 p1, 0x70

    invoke-static {v4, p1, p1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1040
    invoke-static {v5, p1, p1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1042
    :cond_0
    goto/16 :goto_f

    .line 1030
    :pswitch_2
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 1031
    nop

    .line 1032
    const/16 p1, 0x37

    invoke-static {v4, p1, p1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1033
    invoke-static {v5, p1, p1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1035
    :cond_1
    goto/16 :goto_f

    .line 1023
    :pswitch_3
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 1025
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1026
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->restartgamedialog(Landroid/app/Activity;)V

    .line 1028
    :cond_2
    goto/16 :goto_f

    .line 1016
    :pswitch_4
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 1017
    nop

    .line 1018
    const/16 p1, 0x33

    invoke-static {v4, p1, p1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1019
    invoke-static {v5, p1, p1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1021
    :cond_3
    goto/16 :goto_f

    .line 980
    :pswitch_5
    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p3, :cond_5

    .line 981
    new-instance p3, Lyuanwow/foxr/starter/ui/IniUtils;

    invoke-direct {p3}, Lyuanwow/foxr/starter/ui/IniUtils;-><init>()V

    .line 983
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p5

    if-nez p5, :cond_4

    .line 986
    :try_start_0
    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 990
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p3, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p4

    .line 992
    invoke-virtual {p4}, Ljava/io/IOException;->printStackTrace()V

    .line 994
    :goto_1
    nop

    .line 996
    :try_start_2
    invoke-virtual {p3, v2, v1}, Lyuanwow/foxr/starter/ui/IniUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 998
    :catch_2
    move-exception p4

    .line 1000
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 996
    :catch_3
    move-exception p4

    .line 998
    invoke-virtual {p4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1003
    :goto_2
    :try_start_3
    const-string p4, "30"

    invoke-virtual {p3, v2, v1, p4}, Lyuanwow/foxr/starter/ui/IniUtils;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p3, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->save(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 1006
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1008
    :goto_3
    nop

    .line 1009
    invoke-static {v4, p2, p2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1010
    invoke-static {v5, p2, p2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 1014
    :cond_5
    goto/16 :goto_f

    .line 938
    :pswitch_6
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p2, :cond_7

    .line 939
    new-instance p2, Lyuanwow/foxr/starter/ui/IniUtils;

    invoke-direct {p2}, Lyuanwow/foxr/starter/ui/IniUtils;-><init>()V

    .line 941
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 944
    :try_start_4
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_5
    move-exception p3

    .line 948
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {p2, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->load(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_6
    move-exception p3

    .line 950
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 952
    :goto_5
    nop

    .line 954
    :try_start_6
    invoke-virtual {p2, v2, v1}, Lyuanwow/foxr/starter/ui/IniUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    .line 956
    :catch_7
    move-exception p3

    .line 958
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 954
    :catch_8
    move-exception p3

    .line 956
    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 960
    :goto_6
    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    new-instance p4, Lyuanwow/foxr/starter/ui/s$100000027$100000025;

    invoke-direct {p4, p0, p2, p1}, Lyuanwow/foxr/starter/ui/s$100000027$100000025;-><init>(Lyuanwow/foxr/starter/ui/s$100000027;Lyuanwow/foxr/starter/ui/IniUtils;Ljava/lang/String;)V

    const-string p1, "\u8bbe\u7f6e\u5e27\u7387(\u6b63\u5e38\u5e94\u4e3a30)"

    const/16 p2, 0x3e8

    invoke-static {p3, p1, p5, p2, p4}, Lyuanwow/foxr/starter/ui/SeekbarDialog;->show(Landroid/content/Context;Ljava/lang/String;IILyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;)V

    .line 978
    :cond_7
    goto/16 :goto_f

    .line 900
    :pswitch_7
    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p3, :cond_9

    .line 904
    new-instance p3, Lyuanwow/foxr/starter/ui/IniUtils;

    invoke-direct {p3}, Lyuanwow/foxr/starter/ui/IniUtils;-><init>()V

    .line 906
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 909
    :try_start_7
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_7

    :catch_9
    move-exception v6

    .line 913
    :cond_8
    :goto_7
    :try_start_8
    invoke-virtual {p3, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->load(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_8

    :catch_a
    move-exception v6

    .line 915
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 917
    :goto_8
    nop

    .line 919
    :try_start_9
    invoke-virtual {p3, v2, v1}, Lyuanwow/foxr/starter/ui/IniUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_9

    .line 921
    :catch_b
    move-exception p4

    .line 923
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 919
    :catch_c
    move-exception p4

    .line 921
    invoke-virtual {p4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 926
    :goto_9
    :try_start_a
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 p5, p5, -0x5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v2, v1, p4}, Lyuanwow/foxr/starter/ui/IniUtils;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p3, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->save(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_a

    :catch_d
    move-exception p1

    .line 929
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 931
    :goto_a
    nop

    .line 932
    invoke-static {v4, p2, p2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 933
    invoke-static {v5, p2, p2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 936
    :cond_9
    goto/16 :goto_f

    .line 862
    :pswitch_8
    iget-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p3, :cond_b

    .line 866
    new-instance p3, Lyuanwow/foxr/starter/ui/IniUtils;

    invoke-direct {p3}, Lyuanwow/foxr/starter/ui/IniUtils;-><init>()V

    .line 868
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    .line 871
    :try_start_b
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_b

    :catch_e
    move-exception v6

    .line 875
    :cond_a
    :goto_b
    :try_start_c
    invoke-virtual {p3, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->load(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_c

    :catch_f
    move-exception v6

    .line 877
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 879
    :goto_c
    nop

    .line 881
    :try_start_d
    invoke-virtual {p3, v2, v1}, Lyuanwow/foxr/starter/ui/IniUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_d

    .line 883
    :catch_10
    move-exception p4

    .line 885
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 881
    :catch_11
    move-exception p4

    .line 883
    invoke-virtual {p4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 888
    :goto_d
    :try_start_e
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 p5, p5, 0x5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v2, v1, p4}, Lyuanwow/foxr/starter/ui/IniUtils;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p3, p1}, Lyuanwow/foxr/starter/ui/IniUtils;->save(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_12

    goto :goto_e

    :catch_12
    move-exception p1

    .line 891
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 893
    :goto_e
    nop

    .line 894
    invoke-static {v4, p2, p2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 895
    invoke-static {v5, p2, p2, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 898
    :cond_b
    goto :goto_f

    .line 857
    :pswitch_9
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_c

    .line 858
    invoke-static {p1, v4, v4, v5}, Lyuanwow/foxr/starter/ui/s;->charMenu(Landroid/app/Activity;ZZZ)V

    .line 860
    :cond_c
    goto :goto_f

    .line 852
    :pswitch_a
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_d

    .line 853
    invoke-static {p1, v4, v5, v4}, Lyuanwow/foxr/starter/ui/s;->charMenu(Landroid/app/Activity;ZZZ)V

    .line 855
    :cond_d
    goto :goto_f

    .line 847
    :pswitch_b
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_e

    .line 848
    invoke-static {p1, v5, v5, v5}, Lyuanwow/foxr/starter/ui/s;->charMenu(Landroid/app/Activity;ZZZ)V

    .line 850
    :cond_e
    goto :goto_f

    .line 842
    :pswitch_c
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000027;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_f

    .line 843
    invoke-static {p1, v4, v5, v5}, Lyuanwow/foxr/starter/ui/s;->charMenu(Landroid/app/Activity;ZZZ)V

    .line 845
    :cond_f
    nop

    .line 1051
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
