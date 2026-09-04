.class public Lcom/metamoji/un/survey/UnSurveyUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnSurveyUnit.java"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/survey/UnSurveyUnit$ModelDef;,
        Lcom/metamoji/un/survey/UnSurveyUnit$UndoModelDef;,
        Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;,
        Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;,
        Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;,
        Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static MMJUN_EXTINFO_ROLL:Ljava/lang/String; = "roll"

.field public static MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String; = "unitId"

.field public static MMJUN_EXTINFO_USER_ID:Ljava/lang/String; = "userId"

.field public static MMJUN_EXTINFO_USER_NAME:Ljava/lang/String; = "userName"

.field public static MMJUN_SURVEY_UNIT_MIN_FONT_SIZE:I = 0x5

.field public static final MODELTYPE:Ljava/lang/String; = "$surveyunit"


# instance fields
.field registerCollabo_:Z


# direct methods
.method public static synthetic $r8$lambda$Ql2piBRZIyyfRjw6TwzGk8GVX7Q(Lcom/metamoji/un/survey/UnSurveyUnit;FFLcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnit;->lambda$updateSprite$0(FFLcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static createSurveyUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 117
    const-string v0, "$surveyunit"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 118
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 119
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    return-object v0
.end method

.method private handleAnswerDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 9

    .line 1252
    new-instance v0, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;-><init>(Ljava/lang/Object;)V

    .line 1253
    invoke-virtual {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 1254
    invoke-virtual {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getAnswer()Ljava/util/List;

    move-result-object v2

    .line 1255
    invoke-virtual {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getRoll()Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v4

    .line 1256
    invoke-virtual {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getUserName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 1258
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/un/survey/UnSurveyUnit;->setAnswer(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;ZLcom/metamoji/df/controller/EditContext;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1259
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 1260
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    .line 1262
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->resultChanged(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleResultDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 3

    .line 1293
    new-instance v0, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;-><init>(Ljava/lang/Object;)V

    .line 1294
    invoke-virtual {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;->getResult()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1296
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->setResult(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1297
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 1298
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    .line 1300
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->resultChanged(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleSettingsDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 3

    .line 1215
    new-instance v0, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 1216
    invoke-virtual {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;->getSettings()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1217
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->setSettings(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1218
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 1219
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    .line 1221
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->settingsChanged(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateSprite$0(FFLcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v4, p1

    move/from16 v5, p2

    .line 921
    iget-object v1, v0, Lcom/metamoji/un/survey/UnSurveyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v4}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 922
    iget-object v1, v0, Lcom/metamoji/un/survey/UnSurveyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v5}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 924
    iget-object v1, v0, Lcom/metamoji/un/survey/UnSurveyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    .line 925
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 927
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v9

    .line 928
    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    .line 929
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 930
    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v6

    const/4 v10, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v1

    goto :goto_1

    .line 931
    :cond_1
    :goto_0
    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v3

    move v8, v10

    :goto_1
    move-object/from16 v11, p3

    .line 935
    invoke-virtual {v11, v3}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAnswered(Ljava/lang/String;)Z

    move-result v1

    .line 936
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedTeacherAnswer()Z

    move-result v3

    const/4 v12, 0x1

    if-nez v3, :cond_2

    if-eqz v8, :cond_2

    move v13, v12

    goto :goto_2

    :cond_2
    move v13, v1

    :goto_2
    const/16 v14, 0xff

    if-eqz v13, :cond_3

    const/16 v1, 0xe2

    const/16 v3, 0xec

    const/16 v6, 0xd2

    .line 941
    invoke-static {v14, v6, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_3

    :cond_3
    const/16 v1, 0xc0

    const/16 v3, 0xe6

    const/16 v6, 0x97

    .line 943
    invoke-static {v14, v6, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :goto_3
    const/4 v15, 0x0

    .line 946
    invoke-virtual {v2, v15}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 947
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v3, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    const/high16 v16, 0x40800000    # 4.0f

    div-float v1, v4, v16

    const/high16 v17, 0x41200000    # 10.0f

    cmpg-float v1, v1, v17

    if-gez v1, :cond_4

    div-float v1, v4, v17

    goto :goto_4

    :cond_4
    move/from16 v1, v17

    :goto_4
    div-float v18, v5, v16

    cmpg-float v3, v18, v1

    if-gez v3, :cond_5

    div-float v1, v5, v17

    :cond_5
    move v6, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v6

    .line 955
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/df/sprite/Graphics;->drawRoundRect(FFFFFF)V

    move-object v2, v1

    .line 957
    invoke-virtual {v11}, Lcom/metamoji/un/survey/UnSurveyUnit;->getQuestion()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Q. %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sub-float v3, p1, v16

    .line 962
    new-instance v4, Lcom/metamoji/df/sprite/PaintSolid;

    const/high16 v5, -0x1000000

    invoke-direct {v4, v5}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    const/high16 v11, 0x41f00000    # 30.0f

    .line 965
    invoke-virtual {v0, v1, v11, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->calcTextRect(Ljava/lang/String;FLcom/metamoji/df/sprite/Graphics;)Landroid/graphics/RectF;

    move-result-object v4

    move v5, v11

    .line 966
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v3

    const/high16 v19, 0x3f800000    # 1.0f

    if-gtz v6, :cond_7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v6, v18

    if-lez v6, :cond_8

    :cond_7
    sub-float v5, v5, v19

    .line 968
    invoke-virtual {v0, v1, v5, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->calcTextRect(Ljava/lang/String;FLcom/metamoji/df/sprite/Graphics;)Landroid/graphics/RectF;

    move-result-object v4

    .line 969
    sget v6, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_SURVEY_UNIT_MIN_FONT_SIZE:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    .line 974
    :cond_8
    sget v6, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_SURVEY_UNIT_MIN_FONT_SIZE:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_c

    .line 977
    const-string v6, "Q"

    invoke-virtual {v0, v6, v11, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->calcTextRect(Ljava/lang/String;FLcom/metamoji/df/sprite/Graphics;)Landroid/graphics/RectF;

    move-result-object v1

    move-object v4, v1

    move v5, v11

    .line 978
    :cond_9
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_b

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v18

    if-lez v1, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move-object v1, v6

    goto :goto_7

    :cond_b
    :goto_6
    sub-float v5, v5, v19

    .line 980
    invoke-virtual {v0, v6, v5, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->calcTextRect(Ljava/lang/String;FLcom/metamoji/df/sprite/Graphics;)Landroid/graphics/RectF;

    move-result-object v4

    .line 981
    sget v1, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_SURVEY_UNIT_MIN_FONT_SIZE:I

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_9

    goto :goto_5

    .line 988
    :cond_c
    :goto_7
    sget v6, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_SURVEY_UNIT_MIN_FONT_SIZE:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ltz v6, :cond_d

    .line 989
    invoke-virtual {v2, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 991
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 992
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v7

    add-float/2addr v3, v7

    .line 993
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v18, v4

    div-float/2addr v4, v7

    .line 994
    array-length v5, v1

    move v6, v10

    :goto_8
    if-ge v6, v5, :cond_d

    move/from16 v20, v15

    aget-object v15, v1, v6

    .line 995
    invoke-virtual {v2, v3, v4, v15}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    .line 997
    invoke-virtual {v2, v15}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v15

    .line 998
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    add-float/2addr v4, v15

    add-int/lit8 v6, v6, 0x1

    move/from16 v15, v20

    goto :goto_8

    :cond_d
    move/from16 v20, v15

    const/4 v1, -0x1

    if-eqz v13, :cond_12

    add-float v18, v18, v16

    sub-float v3, p2, v18

    .line 1007
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isPublishResult()Z

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    if-nez v4, :cond_f

    if-eqz v8, :cond_e

    goto :goto_9

    .line 1036
    :cond_e
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_hidden:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    mul-float v4, p1, v5

    .line 1037
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    mul-float/2addr v5, v3

    .line 1038
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1039
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1040
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float v4, p1, v4

    div-float/2addr v4, v7

    .line 1041
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    div-float/2addr v3, v7

    add-float v18, v18, v3

    move v7, v6

    move-object v5, v1

    move v3, v4

    move/from16 v4, v18

    .line 1042
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void

    .line 1008
    :cond_f
    :goto_9
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_10

    goto/16 :goto_b

    .line 1012
    :cond_10
    const-string v6, "choices"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1014
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object v6

    .line 1016
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getGraphType()Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    move-result-object v8

    sget-object v9, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    if-ne v8, v9, :cond_11

    .line 1018
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedTeacherAnswer()Z

    move-result v8

    invoke-static {v6, v4, v8, v12}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->aggregateGraphData(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/Map;

    move-result-object v4

    .line 1019
    invoke-static {v4}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->generatePieChartImage(Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_a

    .line 1022
    :cond_11
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedTeacherAnswer()Z

    move-result v8

    invoke-static {v6, v4, v8, v10}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->aggregateGraphData(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/Map;

    move-result-object v4

    .line 1023
    invoke-static {v4}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->generateBarChartImage(Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_a
    move-object v9, v4

    mul-float v4, p1, v5

    .line 1026
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    mul-float/2addr v5, v3

    .line 1027
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1028
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1029
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    sub-float v4, p1, v4

    div-float/2addr v4, v7

    .line 1030
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    sub-float/2addr v3, v5

    div-float/2addr v3, v7

    add-float v18, v18, v3

    .line 1032
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v3, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 1033
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v10, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v6, v10, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v4

    move/from16 v4, v18

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/df/sprite/Graphics;->drawRoundRect(FFFFFF)V

    move v7, v10

    move-object v5, v9

    move v6, v10

    .line 1034
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void

    :cond_12
    const/high16 v3, 0x40400000    # 3.0f

    div-float v6, p2, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float v5, p1, v3

    sub-float v3, p2, v18

    sub-float/2addr v3, v6

    div-float/2addr v3, v7

    add-float v4, v18, v3

    sub-float v3, p1, v5

    div-float/2addr v3, v7

    .line 1052
    invoke-virtual {v2, v7}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 1053
    new-instance v8, Lcom/metamoji/df/sprite/PaintSolid;

    const/16 v13, 0xf0

    const/16 v15, 0x83

    invoke-static {v14, v13, v15, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-direct {v8, v13}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v8}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 1054
    new-instance v8, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v8, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v8}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    move v8, v7

    div-float v7, v6, v17

    move v13, v8

    move v8, v7

    .line 1056
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/df/sprite/Graphics;->drawRoundRect(FFFFFF)V

    .line 1059
    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v7

    .line 1060
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 1061
    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v9}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "personalId"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    :cond_13
    move v10, v12

    .line 1065
    :cond_14
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedAnswer()Z

    move-result v7

    if-eqz v7, :cond_1a

    if-eqz v10, :cond_15

    goto :goto_c

    :cond_15
    div-float v7, v5, v17

    .line 1077
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1078
    sget v9, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ANSWER:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1081
    invoke-virtual {v0, v8, v11, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->calcTextRect(Ljava/lang/String;FLcom/metamoji/df/sprite/Graphics;)Landroid/graphics/RectF;

    move-result-object v9

    .line 1082
    :cond_16
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float v12, v7, v13

    sub-float v12, v5, v12

    cmpl-float v10, v10, v12

    if-gtz v10, :cond_17

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v10, v10, v6

    if-lez v10, :cond_18

    :cond_17
    sub-float v11, v11, v19

    .line 1084
    invoke-virtual {v0, v8, v11, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->calcTextRect(Ljava/lang/String;FLcom/metamoji/df/sprite/Graphics;)Landroid/graphics/RectF;

    move-result-object v9

    cmpg-float v10, v11, v19

    if-gez v10, :cond_16

    :cond_18
    cmpl-float v7, v11, v20

    if-lez v7, :cond_19

    .line 1091
    new-instance v7, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v7, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v7}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 1092
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v5, v1

    div-float/2addr v5, v13

    add-float/2addr v3, v5

    .line 1093
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v6, v1

    div-float/2addr v6, v13

    add-float/2addr v4, v6

    .line 1092
    invoke-virtual {v2, v3, v4, v8}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    :cond_19
    :goto_b
    return-void

    .line 1066
    :cond_1a
    :goto_c
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_hidden:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1067
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v5, v7

    .line 1068
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v6, v8

    .line 1069
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1070
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    sub-float/2addr v5, v8

    div-float/2addr v5, v13

    add-float/2addr v3, v5

    .line 1071
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v6, v5

    div-float/2addr v6, v13

    add-float/2addr v4, v6

    move v6, v7

    move-object v5, v1

    .line 1072
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void
.end method

.method private performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 325
    invoke-static {p0, p2, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->performUndo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Z)V

    .line 327
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 330
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 301
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit-IA;)V

    .line 302
    const-string/jumbo v1, "surveyUnitUndo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 303
    const-string/jumbo v1, "surveyUnitGeopropUndo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 304
    const-string/jumbo v1, "surveyUnitSettings"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 305
    const-string/jumbo v1, "surveyUnitAnswer"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 306
    const-string/jumbo v1, "surveyUnitResult"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private sendAnswerDirection(Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;)V
    .locals 8

    .line 1230
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1236
    invoke-virtual {p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 1237
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 1240
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 1241
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1236
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 1243
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->destroy()V

    return-void
.end method

.method private sendResultDirection(Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;)V
    .locals 8

    .line 1271
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1277
    invoke-virtual {p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 1278
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 1281
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 1282
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1277
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 1284
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;->destroy()V

    return-void
.end method

.method private sendSettingsDirection(Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;)V
    .locals 8

    .line 1192
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1198
    invoke-virtual {p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 1199
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 1202
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 1203
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1198
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 1206
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;->destroy()V

    return-void
.end method

.method private setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 518
    const-string/jumbo v1, "surveyUnitGeopropUndo"

    invoke-static {p0, v1, v0}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 520
    invoke-static {p0, v1, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->pushUndoInfo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/GeometricProps;)V

    .line 522
    invoke-virtual {p2, v1, v0}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 526
    :cond_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz p2, :cond_1

    .line 527
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setHeight(F)V

    .line 528
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setWidth(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 531
    :goto_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz p2, :cond_2

    .line 532
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setX(F)V

    .line 533
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setY(F)V

    .line 535
    :cond_2
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 536
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setRotation(D)V

    .line 538
    :cond_3
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz p2, :cond_4

    .line 539
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setContentScale(D)V

    .line 543
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    return v0
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 313
    const-string/jumbo v0, "surveyUnitUndo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 314
    const-string/jumbo v0, "surveyUnitGeopropUndo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 315
    const-string/jumbo v0, "surveyUnitSettings"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 316
    const-string/jumbo v0, "surveyUnitAnswer"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 317
    const-string/jumbo v0, "surveyUnitResult"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method


# virtual methods
.method calcTextRect(Ljava/lang/String;FLcom/metamoji/df/sprite/Graphics;)Landroid/graphics/RectF;
    .locals 5

    .line 1104
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1105
    invoke-virtual {p3, p2}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 1107
    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1108
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1109
    invoke-virtual {p3, v2}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1110
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1111
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iput v3, p2, Landroid/graphics/RectF;->right:F

    .line 1113
    :cond_0
    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v3, v2

    iput v3, p2, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public canFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method createAnswerUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 868
    const-string/jumbo v0, "surveyUnitAnswer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method createResultUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 886
    const-string/jumbo v0, "surveyUnitResult"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method createSettingsUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 877
    const-string/jumbo v0, "surveyUnitSettings"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGraphType()Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;
    .locals 2

    .line 579
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 582
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    return-object v0

    .line 585
    :cond_0
    const-string v1, "graphType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 587
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    return-object v0

    .line 589
    :cond_1
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 572
    const-string v0, ""

    return-object v0

    .line 575
    :cond_0
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getValue()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 641
    :cond_0
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 644
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getSettings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getValue()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 565
    :cond_0
    const-string/jumbo v1, "settings"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getUnitBaseLocalBounds()Landroid/graphics/RectF;
    .locals 4

    .line 1120
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getUnitRectToView(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    if-nez p1, :cond_0

    .line 1126
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitBaseLocalBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 1131
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1132
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/un/survey/UnSurveyUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1134
    new-instance v0, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getValue()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1156
    new-instance v0, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    .line 1159
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 1160
    invoke-virtual {p0, v1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1163
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 1164
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 1163
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 1164
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1165
    throw p1
.end method

.method protected handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 1175
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v0

    .line 1176
    invoke-static {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->handleSettingsDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 1178
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1179
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->handleAnswerDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 1180
    :cond_1
    invoke-static {v0}, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->handleResultDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 1183
    :cond_2
    const-string/jumbo p1, "survey unit received unknown direction."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->registerCollabo_:Z

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->registerCollaboHandler()V

    .line 141
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->isCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->enlistUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    :cond_0
    return-void
.end method

.method public isAllowedAnswer()Z
    .locals 3

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 627
    :cond_0
    const-string v2, "allowAnswer"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 631
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isAllowedTeacherAnswer()Z
    .locals 3

    .line 607
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 613
    :cond_0
    const-string v2, "allowTeacherAnswer"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 617
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isAnswered(Ljava/lang/String;)Z
    .locals 2

    .line 655
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 659
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return v1

    .line 664
    :cond_1
    const-string v0, "answer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 665
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPublishResult()Z
    .locals 3

    .line 593
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 599
    :cond_0
    const-string v2, "publish"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 603
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 2

    .line 895
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    move-result v0

    .line 897
    instance-of v1, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    if-eqz v1, :cond_0

    .line 898
    check-cast p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 899
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->handleToolModeChangeEvent(Lcom/metamoji/nt/NtToolModeChangedContext;)V

    return v0

    .line 900
    :cond_0
    instance-of p1, p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    if-eqz p1, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    :cond_1
    return v0
.end method

.method public noResizingX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public noResizingY()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public noRotating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 474
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageActivated(Lcom/metamoji/df/controller/DfPageController;)V

    .line 476
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    .line 478
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->enlistUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void
.end method

.method public pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 489
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V

    .line 491
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->delistUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    return-void
.end method

.method performAnswerUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 11

    if-eqz p1, :cond_0

    .line 357
    const-string v0, "ou"

    goto :goto_0

    :cond_0
    const-string v0, "nu"

    :goto_0
    if-eqz p1, :cond_1

    .line 358
    const-string v1, "oa"

    goto :goto_1

    :cond_1
    const-string v1, "na"

    :goto_1
    if-eqz p1, :cond_2

    .line 359
    const-string v2, "or"

    goto :goto_2

    :cond_2
    const-string v2, "nr"

    :goto_2
    if-eqz p1, :cond_3

    .line 360
    const-string p1, "on"

    goto :goto_3

    :cond_3
    const-string p1, "nn"

    .line 362
    :goto_3
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 364
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    invoke-virtual {v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v1

    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v6, v0, v1

    .line 365
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 367
    const-string p1, ""

    :cond_4
    move-object v7, p1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    .line 370
    invoke-virtual/range {v3 .. v10}, Lcom/metamoji/un/survey/UnSurveyUnit;->setAnswer(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;ZLcom/metamoji/df/controller/EditContext;Z)Z

    return-void
.end method

.method performResultUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 379
    const-string p1, "or"

    goto :goto_0

    :cond_0
    const-string p1, "nr"

    .line 381
    :goto_0
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 383
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->setResult(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z

    return-void
.end method

.method performSettingsUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 339
    const-string v0, "os"

    goto :goto_0

    :cond_0
    const-string v0, "ns"

    :goto_0
    if-eqz p1, :cond_1

    .line 340
    const-string p1, "or"

    goto :goto_1

    :cond_1
    const-string p1, "nr"

    .line 342
    :goto_1
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->setSettings(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z

    .line 346
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 348
    invoke-virtual {p0, p1, v1, v2, v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->setResult(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 248
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "surveyUnitResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "surveyUnitAnswer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "surveyUnitSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "surveyUnitGeopropUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "surveyUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 267
    const-string/jumbo p1, "unknown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 264
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->performResultUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 261
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->performAnswerUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 258
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->performSettingsUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 255
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 252
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->performUnitUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x113b29fe -> :sswitch_4
        0x15feda5a -> :sswitch_3
        0x2470fa41 -> :sswitch_2
        0x2ecd6d5c -> :sswitch_1
        0x4b50f5bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method performUnitUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 284
    const-string p1, "ov"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 286
    :cond_0
    const-string p1, "nv"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 290
    iget-object p2, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "value"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->unregisterCollaboHandler()V

    .line 159
    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->delistUnit(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    .line 161
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method registerCollaboHandler()V
    .locals 1

    .line 1309
    iget-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->registerCollabo_:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1319
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1321
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x1

    .line 1322
    iput-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->registerCollabo_:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAnswer(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;ZLcom/metamoji/df/controller/EditContext;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/metamoji/df/controller/EditContext;",
            "Z)Z"
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getValue()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 677
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 679
    const-string v3, "answer"

    if-eqz v2, :cond_0

    .line 680
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz p6, :cond_2

    .line 684
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->createAnswerUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 685
    const-string v6, "ou"

    invoke-interface {v5, v6, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v6, "or"

    invoke-virtual {p3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 687
    const-string v6, "on"

    invoke-interface {v5, v6, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v6, "nu"

    invoke-interface {v5, v6, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v6, "nr"

    invoke-virtual {p3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 690
    const-string v6, "nn"

    invoke-interface {v5, v6, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 693
    const-string v6, "oa"

    invoke-interface {v5, v6, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 695
    :cond_1
    const-string v2, "na"

    invoke-interface {v5, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 697
    invoke-virtual {p6, v5, v4}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 700
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 703
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 704
    invoke-interface {p6, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-virtual {p3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "roll"

    invoke-interface {p6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string/jumbo v2, "userName"

    invoke-interface {p6, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-interface {v1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_3
    const-string/jumbo p6, "result"

    invoke-interface {v0, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object p6, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "value"

    invoke-interface {p6, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p7, :cond_4

    .line 713
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result p6

    if-eqz p6, :cond_4

    .line 714
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p6

    invoke-static {p6}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;

    move-result-object p6

    .line 715
    invoke-virtual {p6, p1, p2, p3, p4}, Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;->setAnswer(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, p6}, Lcom/metamoji/un/survey/UnSurveyUnit;->sendAnswerDirection(Lcom/metamoji/un/survey/direction/UnSurveyUnitAnswerDirectionData;)V

    :cond_4
    if-eqz p5, :cond_5

    .line 720
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    :cond_5
    return v4
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 0

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    :cond_0
    return-void
.end method

.method public setResult(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/metamoji/df/controller/EditContext;",
            "Z)Z"
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getValue()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 826
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->createResultUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 830
    const-string v4, "or"

    invoke-interface {v3, v4, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 832
    const-string v1, "nr"

    invoke-interface {v3, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 834
    invoke-virtual {p3, v3, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 838
    :cond_0
    const-string/jumbo p3, "result"

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    .line 840
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 842
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :goto_0
    iget-object p3, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "value"

    invoke-interface {p3, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p4, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 849
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;

    move-result-object p3

    .line 850
    invoke-virtual {p3, p1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;->setResult(Ljava/util/Map;)V

    .line 851
    invoke-direct {p0, p3}, Lcom/metamoji/un/survey/UnSurveyUnit;->sendResultDirection(Lcom/metamoji/un/survey/direction/UnSurveyUnitResultDirectionData;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 855
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    :cond_3
    return v2
.end method

.method public setSettings(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/metamoji/df/controller/EditContext;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 728
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getValue()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 729
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 730
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 732
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-virtual {v9}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->ordinal()I

    move-result v9

    invoke-static {v8, v9}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v8

    aget-object v6, v6, v8

    .line 733
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    move-result-object v8

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-virtual {v9}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->ordinal()I

    move-result v9

    invoke-static {v7, v9}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v7

    aget-object v7, v8, v7

    if-eq v6, v7, :cond_0

    .line 735
    sget-object v6, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    if-ne v7, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 740
    :goto_0
    const-string v7, "choices"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 741
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 743
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 744
    check-cast v11, Ljava/util/Map;

    .line 745
    const-string v12, "itemId"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 746
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 749
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 750
    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 751
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 752
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 753
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    if-eqz v15, :cond_2

    .line 755
    const-string v9, "answer"

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_2

    const/4 v15, 0x0

    .line 757
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_4

    .line 758
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 761
    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 762
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 767
    :cond_4
    invoke-interface {v9, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    if-eqz v6, :cond_6

    .line 770
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    const/4 v15, 0x1

    if-le v8, v15, :cond_6

    .line 771
    invoke-interface {v14}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    .line 772
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_5

    .line 773
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 774
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 777
    :cond_5
    invoke-interface {v9, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 781
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 782
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 787
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 788
    invoke-interface {v11, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    .line 792
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->createSettingsUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 793
    const-string v7, "os"

    invoke-interface {v6, v7, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 794
    const-string v4, "or"

    invoke-interface {v6, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 796
    const-string v4, "ns"

    invoke-interface {v6, v4, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 797
    const-string v4, "nr"

    invoke-interface {v6, v4, v11}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v15, 0x1

    .line 799
    invoke-virtual {v2, v6, v15}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 802
    :cond_9
    const-string/jumbo v2, "settings"

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v2, "result"

    invoke-interface {v3, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v2, v0, Lcom/metamoji/un/survey/UnSurveyUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v4, "value"

    invoke-interface {v2, v4, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p4, :cond_a

    .line 810
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 811
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;

    move-result-object v2

    .line 812
    invoke-virtual {v2, v1}, Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;->setSettings(Ljava/util/Map;)V

    .line 813
    invoke-direct {v0, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->sendSettingsDirection(Lcom/metamoji/un/survey/direction/UnSurveyUnitSettingsDirectionData;)V

    :cond_a
    if-eqz p2, :cond_b

    .line 817
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->updateSprite()V

    :cond_b
    const/16 v16, 0x1

    return v16
.end method

.method unregisterCollaboHandler()V
    .locals 1

    .line 1331
    iget-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->registerCollabo_:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1341
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1343
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x0

    .line 1344
    iput-boolean v0, p0, Lcom/metamoji/un/survey/UnSurveyUnit;->registerCollabo_:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSprite()V
    .locals 4

    .line 912
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getWidth()F

    move-result v0

    .line 917
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getHeight()F

    move-result v1

    .line 920
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/un/survey/UnSurveyUnit$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, p0}, Lcom/metamoji/un/survey/UnSurveyUnit$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;FFLcom/metamoji/un/survey/UnSurveyUnit;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
