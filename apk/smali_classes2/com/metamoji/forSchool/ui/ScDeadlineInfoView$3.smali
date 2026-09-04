.class Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;
.super Ljava/util/ArrayList;
.source "ScDeadlineInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->handleMenuButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/metamoji/nt/NtCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 575
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_DEADLINEMENU_START:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_DEADLINEMENU_END:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_DEADLINEMENU_RESTART:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_DEADLINEMENU_PREVSTART:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_DEADLINEMENU_SETTING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_DEADLINEMENU_LOGLIST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
