.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$13;
.super Ljava/util/ArrayList;
.source "ScDeadlineSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->modeSelectButtonTap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$13;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTINGDLG_PREVSTART_NONE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$13;->add(Ljava/lang/Object;)Z

    .line 390
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTINGDLG_PREVSTART_READONLY:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$13;->add(Ljava/lang/Object;)Z

    .line 391
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTINGDLG_PREVSTART_DONTSEE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$13;->add(Ljava/lang/Object;)Z

    return-void
.end method
