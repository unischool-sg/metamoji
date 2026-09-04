.class Lcom/metamoji/forSchool/ui/ScScoreInfoView$7;
.super Ljava/util/ArrayList;
.source "ScScoreInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreInfoView;->handleMenuButtonTap(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 696
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$7;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_REPORT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$7;->add(Ljava/lang/Object;)Z

    .line 697
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_CANCELREPORT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$7;->add(Ljava/lang/Object;)Z

    .line 698
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_SCORELIST:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$7;->add(Ljava/lang/Object;)Z

    return-void
.end method
