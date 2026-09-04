.class public Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "UnSurveyUnitAnswerDirectionData.java"


# static fields
.field private static final MMJUN_MODELPROPVALUE_SURVEY_UNIT_ANSWER_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROP_SURVEY_UNIT_DIRECTION_ANSWER:Ljava/lang/String; = "a"

.field private static final MMJUN_MODELPROP_SURVEY_UNIT_DIRECTION_ROLL:Ljava/lang/String; = "r"

.field private static final MMJUN_MODELPROP_SURVEY_UNIT_DIRECTION_USER_ID:Ljava/lang/String; = "u"

.field private static final MMJUN_MODELPROP_SURVEY_UNIT_DIRECTION_USER_NAME:Ljava/lang/String; = "n"

.field private static final MMJUN_MODELTYPE_SURVEY_UNIT_ANSWER_DIRECTION:Ljava/lang/String; = "surveyUnitAnswerDirection"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 58
    const-string/jumbo v0, "surveyUnitAnswerDirection"

    invoke-static {p0, v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;
    .locals 2

    .line 47
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v0, "!type"

    const-string/jumbo v1, "surveyUnitAnswerDirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getAnswer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 93
    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getDirectionAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoll()Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 102
    const-string v1, "r"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    invoke-virtual {v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    .line 103
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "u"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 112
    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setAnswer(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "u"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "r"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 72
    const-string p2, "a"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    const-string p1, "n"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
