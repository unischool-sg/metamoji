.class Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;
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
        "Ljava/lang/Integer;",
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

    .line 569
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_MENU_START:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;->add(Ljava/lang/Object;)Z

    .line 570
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_MENU_END:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;->add(Ljava/lang/Object;)Z

    .line 571
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_MENU_RESTART:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;->add(Ljava/lang/Object;)Z

    .line 572
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_MENU_PREVSTART:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;->add(Ljava/lang/Object;)Z

    .line 573
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_MENU_SETTING:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;->add(Ljava/lang/Object;)Z

    .line 574
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_MENU_LOGLIST:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
