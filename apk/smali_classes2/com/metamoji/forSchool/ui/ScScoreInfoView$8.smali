.class Lcom/metamoji/forSchool/ui/ScScoreInfoView$8;
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
        "Lcom/metamoji/nt/NtCommand;",
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

    .line 699
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$8;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_REPORT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$8;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_UNREPORT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$8;->add(Ljava/lang/Object;)Z

    .line 701
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_SCORELIST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$8;->add(Ljava/lang/Object;)Z

    return-void
.end method
