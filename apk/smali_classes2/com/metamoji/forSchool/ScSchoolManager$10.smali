.class Lcom/metamoji/forSchool/ScSchoolManager$10;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolManager;->initMode2Info(Lcom/metamoji/nt/NtDocument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2105
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$10;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2108
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$10;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->getDeadlineInfoView()Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2110
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updateStatus()V

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$10;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->getScoreInfoView()Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2114
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->updateStatus()V

    :cond_1
    return-void
.end method
