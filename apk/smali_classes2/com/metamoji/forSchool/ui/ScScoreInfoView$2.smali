.class Lcom/metamoji/forSchool/ui/ScScoreInfoView$2;
.super Ljava/lang/Object;
.source "ScScoreInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreInfoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 226
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$2;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$2;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->-$$Nest$mhandleReportByStudentBtnTap(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    return-void
.end method
