.class public final synthetic Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/survey/UnSurveyUnit;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/un/survey/UnSurveyUnit;

    iput-object p2, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$2:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    iput-object p4, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/un/survey/UnSurveyUnit;

    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$2:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    iget-object v3, p0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->lambda$handleSurveyUnitViewResult$3(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    return-void
.end method
