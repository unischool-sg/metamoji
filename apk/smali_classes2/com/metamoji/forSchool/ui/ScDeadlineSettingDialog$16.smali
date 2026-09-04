.class Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$16;
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
        "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
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

    .line 401
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$16;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$16;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$16;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$16;->add(Ljava/lang/Object;)Z

    return-void
.end method
