.class public Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtTextSearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NtTextSearchContext"
.end annotation


# instance fields
.field _callEndContext:Z

.field _commonLayerController:Lcom/metamoji/nt/NtLayerController;

.field _editLayerController:Lcom/metamoji/nt/NtLayerController;

.field _restoreContext:Lcom/metamoji/df/controller/ControllerContext;

.field _restorePageController:Lcom/metamoji/nt/NtPageController;

.field _restorePageModel:Lcom/metamoji/df/model/IModel;

.field _searchCancelled:Z

.field _visibleCommonLayer:Z

.field _visibleEditLayer:Z

.field _visibleTeacherPersonalLayer:Z

.field _wasInvisiblePersonalLayerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtLayerController;",
            ">;"
        }
    .end annotation
.end field

.field _wasVisiblePersonalLayerArray:Ljava/util/List;
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
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_callEndContext:Z

    .line 44
    iput-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_searchCancelled:Z

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    .line 55
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    .line 56
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    .line 58
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 59
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    .line 60
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    .line 61
    iput-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleCommonLayer:Z

    return-void
.end method


# virtual methods
.method public checkPurgedAndRestorePage(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1c

    invoke-interface {v1, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->endContextInner()V

    .line 82
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1c

    .line 97
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    .line 99
    iput-boolean v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleEditLayer:Z

    const/4 v5, 0x0

    .line 100
    iput-boolean v5, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleCommonLayer:Z

    .line 101
    iput-boolean v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleTeacherPersonalLayer:Z

    if-eqz v3, :cond_6

    .line 106
    const-string/jumbo v6, "visibleEditLayer"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    invoke-static {v3, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleEditLayer:Z

    .line 109
    :cond_3
    const-string/jumbo v6, "visibleCommonLayer"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 110
    invoke-static {v3, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleCommonLayer:Z

    .line 112
    :cond_4
    const-string/jumbo v6, "visibleTeacherPersonalLayer"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    invoke-static {v3, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleTeacherPersonalLayer:Z

    .line 115
    :cond_5
    const-string/jumbo v6, "visiblePersonalLayerIdSuffixDic"

    invoke-static {v3, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 117
    const-string/jumbo v7, "visibleTeacherPersonalLayerIdSuffixDic"

    invoke-static {v3, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    goto :goto_2

    :cond_6
    move-object v6, v2

    move-object v7, v6

    .line 121
    :goto_2
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v8

    iput-object v8, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    .line 122
    sget-object v9, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v9, v8, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 124
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    .line 125
    iput-object v2, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    if-eqz v1, :cond_7

    .line 126
    instance-of v8, v1, Lcom/metamoji/nt/NtPageController;

    if-eqz v8, :cond_7

    .line 127
    check-cast v1, Lcom/metamoji/nt/NtPageController;

    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    .line 129
    :cond_7
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    if-eqz v1, :cond_8

    .line 130
    iget-object v8, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v1, v8}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 134
    :cond_8
    iput-object v2, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_editLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 135
    iput-object v2, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    if-nez v1, :cond_9

    move v1, v5

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    .line 139
    :goto_3
    iget-object v2, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    if-nez v2, :cond_a

    move v2, v5

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v2

    :goto_4
    move v8, v5

    :goto_5
    if-ge v8, v2, :cond_1b

    .line 140
    iget-object v9, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v9, v8}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v9

    if-nez v9, :cond_b

    goto/16 :goto_b

    .line 144
    :cond_b
    const-string/jumbo v10, "system:edit"

    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 146
    iget-boolean v10, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleEditLayer:Z

    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v11

    if-eq v10, v11, :cond_c

    .line 147
    iget-boolean v10, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleEditLayer:Z

    invoke-virtual {v9, v10}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 148
    iput-object v9, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_editLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 150
    :cond_c
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleEditLayer:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 151
    :cond_d
    const-string/jumbo v10, "system:common"

    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 153
    iget-boolean v10, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleCommonLayer:Z

    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v11

    if-eq v10, v11, :cond_e

    .line 154
    iget-boolean v10, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleCommonLayer:Z

    invoke-virtual {v9, v10}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 155
    iput-object v9, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 157
    :cond_e
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleCommonLayer:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 160
    :cond_f
    const-string/jumbo v10, "system:teacher_personal"

    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 162
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetTeacherPersonalLayerId(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v10

    .line 164
    iget-boolean v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleTeacherPersonalLayer:Z

    if-eqz v11, :cond_10

    if-eqz v10, :cond_10

    move v11, v4

    goto :goto_6

    :cond_10
    move v11, v5

    :goto_6
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v12

    if-eq v11, v12, :cond_13

    .line 165
    iget-boolean v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleTeacherPersonalLayer:Z

    if-eqz v11, :cond_11

    if-eqz v10, :cond_11

    move v11, v4

    goto :goto_7

    :cond_11
    move v11, v5

    :goto_7
    invoke-virtual {v9, v11}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 166
    iget-boolean v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleTeacherPersonalLayer:Z

    if-eqz v11, :cond_12

    if-eqz v10, :cond_12

    .line 167
    iget-object v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 169
    :cond_12
    iget-object v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_13
    :goto_8
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 175
    :cond_14
    const-string/jumbo v10, "system:personal"

    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 178
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11, v6}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetPersonalLayerId(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)Z

    move-result v10

    .line 179
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v11

    if-eq v10, v11, :cond_16

    .line 180
    invoke-virtual {v9, v10}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v10, :cond_15

    .line 182
    iget-object v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 184
    :cond_15
    iget-object v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_16
    :goto_9
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 192
    :cond_17
    const-string/jumbo v10, "system:personal_template"

    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 194
    iget-object v10, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    invoke-static {v3, v10}, Lcom/metamoji/nt/NtTextSearchUtil;->isSearchTargetForPersonalTemplate(Ljava/util/Map;Lcom/metamoji/nt/NtPageController;)Z

    move-result v10

    .line 196
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v11

    if-eq v10, v11, :cond_19

    .line 197
    invoke-virtual {v9, v10}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v10, :cond_18

    .line 199
    iget-object v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 201
    :cond_18
    iget-object v11, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_19
    :goto_a
    invoke-virtual {v9}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 211
    :cond_1b
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    :cond_1c
    return-object v0
.end method

.method endContextInner()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_editLayerController:Lcom/metamoji/nt/NtLayerController;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 248
    iget-boolean v3, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleEditLayer:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 249
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_editLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    if-eqz v0, :cond_1

    .line 252
    iget-boolean v3, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_visibleCommonLayer:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 253
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_commonLayerController:Lcom/metamoji/nt/NtLayerController;

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtLayerController;

    .line 258
    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    goto :goto_0

    .line 260
    :cond_2
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasVisiblePersonalLayerArray:Ljava/util/List;

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLayerController;

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    goto :goto_1

    .line 266
    :cond_4
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_wasInvisiblePersonalLayerArray:Ljava/util/List;

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    iget-object v2, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 270
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageController:Lcom/metamoji/nt/NtPageController;

    .line 273
    :cond_6
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restoreContext:Lcom/metamoji/df/controller/ControllerContext;

    .line 274
    iput-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_restorePageModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public endSearchContext()V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_callEndContext:Z

    const/4 v1, 0x1

    .line 291
    iput-boolean v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_callEndContext:Z

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->endContextInner()V

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext$1;-><init>(Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isSearchCancelled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_searchCancelled:Z

    return v0
.end method

.method refreshDetailWindow()V
    .locals 1

    .line 310
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->refreshDetailWindow()V

    return-void
.end method

.method public setSearchCancelled(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->_searchCancelled:Z

    return-void
.end method
