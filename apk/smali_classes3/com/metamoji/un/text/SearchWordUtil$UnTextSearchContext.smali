.class public Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;
.super Ljava/lang/Object;
.source "SearchWordUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/SearchWordUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnTextSearchContext"
.end annotation


# instance fields
.field private _commonLayerController:Lcom/metamoji/nt/NtLayerController;

.field private _restoreContext:Lcom/metamoji/df/controller/ControllerContext;

.field private _restorePageController:Lcom/metamoji/nt/NtPageController;

.field private _restorePageModel:Lcom/metamoji/df/model/IModel;

.field private _visibleCommonLayer:Z

.field private _wasInvisiblePersonalLayerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtLayerController;",
            ">;"
        }
    .end annotation
.end field

.field private _wasVisiblePersonalLayerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtLayerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    .line 48
    iput-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    .line 50
    iput-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    .line 51
    iput-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 52
    iput-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    .line 53
    iput-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_visibleCommonLayer:Z

    return-void
.end method


# virtual methods
.method public checkPurgedAndRestorePage(Lcom/metamoji/df/model/IModel;)V
    .locals 11

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_f

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->endContext()V

    .line 84
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_f

    .line 98
    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    .line 99
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 100
    instance-of v3, v2, Lcom/metamoji/nt/NtPageController;

    if-eqz v3, :cond_3

    .line 101
    check-cast v2, Lcom/metamoji/nt/NtPageController;

    iput-object v2, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    if-eqz v2, :cond_f

    .line 107
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v2

    .line 108
    const-string/jumbo v3, "visibleCommonLayer"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_visibleCommonLayer:Z

    .line 111
    :cond_4
    const-string/jumbo v3, "visiblePersonalLayerIdSuffixDic"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 113
    const-string/jumbo v4, "visibleTeacherPersonalLayerIdSuffixDic"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 115
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    .line 116
    sget-object v4, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v4, v1, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 118
    iget-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    iget-object v4, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    .line 123
    iget-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    .line 124
    iget-object v4, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_e

    .line 125
    iget-object v7, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v7, v6}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    .line 126
    const-string/jumbo v8, "system:common"

    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 128
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v8

    .line 129
    iget-boolean v9, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_visibleCommonLayer:Z

    if-eq v9, v8, :cond_d

    .line 130
    invoke-virtual {v7, v9}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 131
    iput-object v7, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    goto/16 :goto_4

    .line 135
    :cond_5
    const-string/jumbo v8, "system:personal"

    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 137
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetPersonalLayerId(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)Z

    move-result v8

    .line 138
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v9

    if-eq v8, v9, :cond_d

    .line 139
    invoke-virtual {v7, v8}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v8, :cond_6

    .line 141
    iget-object v8, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 145
    :cond_6
    iget-object v8, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 151
    :cond_7
    const-string/jumbo v8, "system:personal_template"

    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 154
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    .line 155
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v8

    .line 156
    invoke-virtual {v8}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v8}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v8}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    move v9, v5

    .line 169
    :goto_3
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v8

    if-eq v9, v8, :cond_d

    .line 170
    invoke-virtual {v7, v9}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v9, :cond_a

    .line 172
    iget-object v8, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 174
    :cond_a
    iget-object v8, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 178
    :cond_b
    const-string/jumbo v8, "system:teacher_personal"

    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 181
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetTeacherPersonalLayerId(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    .line 182
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v9

    if-eq v8, v9, :cond_d

    .line 183
    invoke-virtual {v7, v8}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v8, :cond_c

    .line 185
    iget-object v8, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 187
    :cond_c
    iget-object v8, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 193
    :cond_e
    iput-object p1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    :cond_f
    return-void
.end method

.method public endContext()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    if-eqz v0, :cond_0

    .line 208
    iget-boolean v2, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_visibleCommonLayer:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 209
    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLayerController;

    const/4 v3, 0x1

    .line 215
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    goto :goto_0

    .line 217
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLayerController;

    const/4 v3, 0x0

    .line 221
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    goto :goto_1

    .line 223
    :cond_3
    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    iget-object v2, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 227
    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    .line 230
    :cond_5
    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    .line 231
    iput-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public getRestorePageCurrentLayer()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
