.class public Lcom/metamoji/ns/ui/NsCollaboModeBar;
.super Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
.source "NsCollaboModeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;,
        Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;
    }
.end annotation


# static fields
.field private static final INDICATOR_ANIMATION_DURATION:I = 0x15e


# instance fields
.field private mWidthChangedHandlers:Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

.field m_closeButton:Landroid/widget/ImageButton;

.field m_closeButtonForGuidance:Landroid/widget/ImageButton;

.field m_gestureDetector:Landroid/view/GestureDetector;

.field m_inputIndicator:Landroid/widget/ImageView;

.field m_inputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

.field m_isShow:Z

.field private m_msgFormat:Ljava/lang/String;

.field m_openButton:Landroid/widget/ImageButton;

.field m_openButtonForGuidance:Landroid/widget/ImageButton;

.field m_outputIndicator:Landroid/widget/ImageView;

.field m_outputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

.field m_subClerkIcon:Landroid/widget/ImageView;

.field m_subClerkLabel:Landroid/widget/TextView;

.field m_subCollaboStartBtn:Landroid/widget/FrameLayout;

.field m_subCollaboStartBtnImage:Landroid/widget/ImageView;

.field m_subCollaboStartBtnText:Landroid/widget/TextView;

.field m_subContainer:Landroid/view/View;

.field m_subContainerForGuidance:Landroid/view/View;

.field m_subInputIndicator:Landroid/widget/ImageView;

.field m_subOutputIndicator:Landroid/widget/ImageView;

.field m_subPresenterIcon:Landroid/widget/ImageView;

.field m_subSchoolDoItNumLabel:Landroid/widget/TextView;

.field m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

.field m_subSchoolEditLayerBtnForGuidance:Landroid/widget/FrameLayout;

.field m_subSchoolEditLayerBtnImage:Landroid/widget/ImageView;

.field m_subSchoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

.field m_subSchoolEditLayerBtnText:Landroid/widget/TextView;

.field m_subSchoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

.field m_subSchoolEveryoneAnswerBtn:Landroid/widget/FrameLayout;

.field m_subSchoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

.field m_subSchoolHelpNumLabel:Landroid/widget/TextView;

.field m_subSchoolNotYetNumLabel:Landroid/widget/TextView;

.field m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

.field m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

.field m_subSchoolPageTypeBtnImage:Landroid/widget/ImageView;

.field m_subSchoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

.field m_subSchoolPageTypeBtnText:Landroid/widget/TextView;

.field m_subSchoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

.field m_subSchoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

.field m_subSchoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

.field m_subSchoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

.field m_subSchoolStatusCountBar:Landroid/view/View;

.field m_subSchoolStatusDoItBtn:Landroid/widget/ImageView;

.field m_subSchoolStatusHelpBtn:Landroid/widget/ImageView;

.field m_subSchoolTeacherModeLockBtn:Landroid/widget/FrameLayout;

.field m_subSchoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

.field m_subSchoolTeacherModeLockBtnText:Landroid/widget/TextView;

.field m_subSchoolTeacherModePresenterBtn:Landroid/widget/FrameLayout;

.field m_subSchoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

.field m_subSchoolTeacherModePresenterBtnText:Landroid/widget/TextView;

.field m_subSchoolTeacherMonitoringBtn:Landroid/widget/FrameLayout;

.field m_subSchoolTeacherMonitoringBtnImage:Landroid/widget/ImageView;

.field m_subSpeakerIcon:Landroid/widget/ImageView;

.field m_subSpeakerLabel:Landroid/widget/TextView;

.field m_subVisitorIcon:Landroid/widget/ImageView;

.field m_subVisitorLabel:Landroid/widget/TextView;

.field m_userCountLabel:Landroid/widget/TextView;

.field m_userLabelLayout:Landroid/widget/RelativeLayout;

.field m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

.field m_userListLabel:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$monWidthChanged(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->onWidthChanged()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 189
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    .line 183
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

    .line 184
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_outputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

    const/4 v0, 0x0

    .line 1391
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_msgFormat:Ljava/lang/String;

    .line 1784
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;Lcom/metamoji/ns/ui/NsCollaboModeBar-IA;)V

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->mWidthChangedHandlers:Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->setRetainInstance(Z)V

    .line 193
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private onWidthChanged()V
    .locals 3

    .line 1075
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userLabelLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1076
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1078
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->isSoftInputVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1079
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userLabelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 1080
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userLabelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1081
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->mWidthChangedHandlers:Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1091
    :cond_2
    iget-boolean v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    if-nez v2, :cond_3

    .line 1092
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;->onWidthChanged(I)V

    return-void

    .line 1094
    :cond_3
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    if-eqz v0, :cond_5

    .line 1095
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    goto :goto_1

    .line 1097
    :cond_5
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    :goto_1
    if-nez v0, :cond_7

    goto :goto_2

    .line 1102
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1104
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->mWidthChangedHandlers:Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;->onWidthChanged(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private schoolBtnVisibleChange(Lcom/metamoji/nt/NtCommandManager;Z)V
    .locals 13

    if-nez p2, :cond_0

    .line 1894
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    .line 1898
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    .line 1899
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherBtnBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1900
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    sget v3, Lcom/metamoji/noteanytime/R$id;->subSchoolStatusBtnBar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1901
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeBtnBar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1902
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    sget v5, Lcom/metamoji/noteanytime/R$id;->schoolTeacherBtnBar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1903
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    sget v6, Lcom/metamoji/noteanytime/R$id;->schoolStatusBtnBar:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1904
    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    sget v7, Lcom/metamoji/noteanytime/R$id;->schoolEveryoneAnswerBtnBar:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1905
    iget-object v7, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    sget v8, Lcom/metamoji/noteanytime/R$id;->subSchoolEveryoneAnswerBtnBar:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 1908
    iget-object v10, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1910
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v10

    .line 1911
    invoke-virtual {v10}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v11

    .line 1912
    sget-object v12, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v11, v12, :cond_2

    invoke-virtual {v10}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1914
    iget-object v10, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1917
    :cond_2
    iget-object v10, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    if-eqz v1, :cond_3

    .line 1923
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v3, :cond_4

    .line 1926
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v4, :cond_5

    .line 1929
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1932
    :cond_5
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolTeacherModeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v1

    .line 1933
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1934
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1935
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1936
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherMonitoringBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1938
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1939
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 1943
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v3, :cond_8

    .line 1946
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v4, :cond_9

    .line 1949
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_1
    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    if-eqz v2, :cond_a

    .line 1955
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v5, :cond_b

    .line 1958
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-eqz v6, :cond_c

    .line 1961
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v7, :cond_11

    .line 1964
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_d
    if-eqz v2, :cond_e

    .line 1968
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    if-eqz v5, :cond_f

    .line 1971
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    if-eqz v6, :cond_10

    .line 1974
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    if-eqz v7, :cond_11

    .line 1977
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1981
    :cond_11
    :goto_2
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolEveryoneAnswerCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_12
    const/high16 p1, 0x3f000000    # 0.5f

    .line 1984
    :goto_3
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1986
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEveryoneAnswerBtn:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public addStateChangedListener(Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;)V
    .locals 1

    .line 1791
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->mWidthChangedHandlers:Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public appendUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->insert(Ljava/lang/Object;I)V

    .line 1506
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateUserCount()V

    .line 1509
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSubMemberIcon()V

    .line 1512
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboUserInfo;->clone()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->appendUserInfoForSchool(Lcom/metamoji/forSchool/ui/ScUserListAdapter;Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 1515
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->reloadUserList()V

    return-void
.end method

.method public changeBarSize(Z)V
    .locals 3

    .line 1042
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    if-nez v0, :cond_0

    return-void

    .line 1046
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_1

    .line 1048
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1049
    const-string v1, "MMJCollaboGuidanceBarClose"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_4

    .line 1057
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    .line 1058
    :goto_0
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    goto :goto_2

    .line 1060
    :cond_4
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    .line 1061
    :goto_1
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    :goto_2
    const/16 v2, 0x8

    .line 1065
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    .line 1069
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->onWidthChanged()V

    return-void
.end method

.method public getWidth()I
    .locals 2

    .line 1111
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->mWidthChangedHandlers:Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;->onWidthChanged(I)V

    return v1

    .line 1114
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    if-eqz v0, :cond_2

    .line 1115
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    goto :goto_0

    .line 1117
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    :goto_0
    if-nez v0, :cond_4

    return v1

    .line 1123
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method handleChangeLargeBarButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 1034
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->changeBarSize(Z)V

    return-void
.end method

.method handleChangeSmallBarButtonTap()V
    .locals 1

    const/4 v0, 0x1

    .line 1027
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->changeBarSize(Z)V

    return-void
.end method

.method handleLeftSwipeGesture()V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    .line 1004
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1005
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->changeBarSize(Z)V

    return-void
.end method

.method handlePresenterIconTap()V
    .locals 7

    .line 1279
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    .line 1281
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1287
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .line 1295
    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1296
    iget v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userContextMenuTargetIsPresenter:Z

    .line 1299
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1301
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    return-void

    .line 1306
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 1307
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v1

    .line 1308
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subPresenterIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    new-instance v6, Lcom/metamoji/ns/ui/NsCollaboModeBar$42;

    invoke-direct {v6, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$42;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method

.method handleRightSwipeGesture()V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    .line 1017
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1018
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->changeBarSize(Z)V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 921
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 924
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    .line 925
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 927
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 929
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->onWidthChanged()V

    return-void
.end method

.method public initForGuidanceMode()V
    .locals 5

    .line 967
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->terminatePanel()V

    :cond_0
    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isInitialized:Z

    .line 976
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 978
    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    .line 979
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    if-eqz v1, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    if-nez v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 985
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_5

    .line 986
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->hide()V

    .line 991
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->resetSchoolUserList()V

    return-void
.end method

.method public initForShareNoteMode()V
    .locals 5

    .line 938
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 944
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isInitialized:Z

    .line 947
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 949
    :goto_0
    iput-boolean v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    .line 950
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    if-nez v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 955
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->initializePanel()V

    .line 958
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->show()V

    return-void
.end method

.method public initializePanel()V
    .locals 3

    .line 1151
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateStatusBtn()V

    .line 1154
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateModeArea()V

    .line 1157
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userCountLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusCountBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->clear()V

    .line 1171
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSubMemberIcon()V

    return-void
.end method

.method public inputIndicator(Z)V
    .locals 4

    .line 1335
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz p1, :cond_0

    .line 1328
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 p1, 0x2

    .line 1330
    new-array v0, p1, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subInputIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v1, v0, v2

    .line 1331
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 1332
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1337
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeBar$43;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$43;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    .line 252
    invoke-super {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getView()Landroid/view/View;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    if-nez v2, :cond_0

    .line 264
    new-instance v2, Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    if-nez v2, :cond_1

    .line 268
    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    :cond_1
    if-eqz p1, :cond_2

    .line 274
    const-string v1, "m_isInitialized"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isInitialized:Z

    .line 275
    const-string v1, "m_isSmall"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    .line 276
    const-string v1, "m_isGuidanceMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    .line 277
    const-string v1, "m_isShow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    .line 279
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->clear()V

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSchoolUserList()V

    .line 285
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->clear()V

    .line 286
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 289
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_2
    new-instance p1, Lcom/metamoji/ns/ui/NsCollaboModeBar$2;

    invoke-direct {p1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    .line 305
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainContainerForGuidanceForSchool:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    .line 306
    sget v1, Lcom/metamoji/noteanytime/R$id;->collaboStartBtnForSchool:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    .line 307
    sget v1, Lcom/metamoji/noteanytime/R$id;->closeButtonForGuidanceForSchool:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_closeButtonForGuidance:Landroid/widget/ImageButton;

    .line 309
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    .line 310
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnImageForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

    .line 311
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnTextForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    .line 313
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    .line 314
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnImageForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    .line 315
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnTextForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

    .line 317
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

    .line 318
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnImageForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

    .line 319
    sget v1, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnTextForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

    .line 321
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$3;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$4;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$5;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 347
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 348
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 350
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$6;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$6;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 358
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_closeButtonForGuidance:Landroid/widget/ImageButton;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$7;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$7;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_closeButtonForGuidance:Landroid/widget/ImageButton;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    sget v1, Lcom/metamoji/noteanytime/R$id;->subContainerForGuidanceForSchool:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    .line 369
    sget v1, Lcom/metamoji/noteanytime/R$id;->subCollaboStartBtnForSchool:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subCollaboStartBtn:Landroid/widget/FrameLayout;

    .line 370
    sget v1, Lcom/metamoji/noteanytime/R$id;->subCollaboStartBtnForSchoolImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subCollaboStartBtnImage:Landroid/widget/ImageView;

    .line 371
    sget v1, Lcom/metamoji/noteanytime/R$id;->subCollaboStartBtnForSchoolText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subCollaboStartBtnText:Landroid/widget/TextView;

    .line 372
    sget v1, Lcom/metamoji/noteanytime/R$id;->openButtonForGuidanceForSchool:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_openButtonForGuidance:Landroid/widget/ImageButton;

    .line 374
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolPageTypeBtnForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    .line 375
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolPageTypeBtnImageForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

    .line 376
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolPageTypeBtnTextForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    .line 378
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolPersonalModeTypeBtnForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    .line 379
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolPersonalModeTypeBtnImageForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    .line 380
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolPersonalModeTypeBtnTextForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

    .line 382
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolEditLayerBtnForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnForGuidance:Landroid/widget/FrameLayout;

    .line 383
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolEditLayerBtnImageForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

    .line 384
    sget v1, Lcom/metamoji/noteanytime/R$id;->subSchoolEditLayerBtnTextForGuidance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

    .line 386
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$8;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$8;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$9;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$9;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$10;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$10;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subCollaboStartBtn:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 411
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 412
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 414
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subCollaboStartBtn:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$11;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$11;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subCollaboStartBtn:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 421
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_openButtonForGuidance:Landroid/widget/ImageButton;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeBar$12;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$12;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BAR_OPEN_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_openButtonForGuidance:Landroid/widget/ImageButton;

    new-instance v3, Landroid/graphics/Rect;

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    const/high16 v6, 0x42240000    # 41.0f

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, v2, v3, v5}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 430
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v8

    .line 432
    :goto_1
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainContainerForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    .line 433
    sget v2, Lcom/metamoji/noteanytime/R$id;->userLabelLayoutForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userLabelLayout:Landroid/widget/RelativeLayout;

    .line 434
    sget v2, Lcom/metamoji/noteanytime/R$id;->userListLabelForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListLabel:Landroid/widget/TextView;

    .line 435
    sget v2, Lcom/metamoji/noteanytime/R$id;->userCountLabelForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userCountLabel:Landroid/widget/TextView;

    .line 436
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolUserListView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    .line 437
    sget v2, Lcom/metamoji/noteanytime/R$id;->closeButtonForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_closeButton:Landroid/widget/ImageButton;

    .line 438
    sget v2, Lcom/metamoji/noteanytime/R$id;->inputIndicatorForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicator:Landroid/widget/ImageView;

    .line 439
    sget v2, Lcom/metamoji/noteanytime/R$id;->outputIndicatorForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_outputIndicator:Landroid/widget/ImageView;

    .line 441
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    .line 442
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnImage:Landroid/widget/ImageView;

    .line 443
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnText:Landroid/widget/TextView;

    .line 444
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolStatusDoItBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    .line 445
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolStatusHelpBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    .line 446
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEveryoneAnswerBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    .line 447
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEveryoneAnswerBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    .line 449
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModePresenterBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    .line 450
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModePresenterBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

    .line 451
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModePresenterBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    .line 452
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeLockBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    .line 453
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeLockBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

    .line 454
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeLockBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtnText:Landroid/widget/TextView;

    .line 457
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    .line 458
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnImage:Landroid/widget/ImageView;

    .line 459
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnText:Landroid/widget/TextView;

    .line 461
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherMonitoringBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    .line 462
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    .line 463
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnImage:Landroid/widget/ImageView;

    .line 464
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnText:Landroid/widget/TextView;

    .line 465
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolStatusCountBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusCountBar:Landroid/view/View;

    .line 466
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    .line 467
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolDoItNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    .line 469
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    new-instance v3, Lcom/metamoji/ns/ui/NsCollaboModeBar$13;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$13;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolNotYetNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    .line 477
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    new-instance v3, Lcom/metamoji/ns/ui/NsCollaboModeBar$14;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$14;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolHelpNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    .line 485
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    new-instance v3, Lcom/metamoji/ns/ui/NsCollaboModeBar$15;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$15;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerImage(Lcom/metamoji/nt/NtPageController;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerText(Lcom/metamoji/nt/NtPageController;)I

    move-result v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    sget v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    .line 496
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 497
    sget v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    .line 498
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-eqz v1, :cond_4

    .line 500
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/metamoji/noteanytime/R$color;->school_doit_color_jp:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 502
    :cond_4
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/metamoji/noteanytime/R$color;->school_doit_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 504
    :goto_2
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/metamoji/noteanytime/R$color;->school_help_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 505
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEveryoneAnswerBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    .line 507
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$16;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$16;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 516
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$17;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$17;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 523
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$18;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$18;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 532
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$19;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$19;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 539
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$20;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$20;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 546
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$21;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$21;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$22;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$22;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 561
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$23;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$23;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 568
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$24;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$24;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v2, v5, v7, v9}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 579
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_TEACHERMODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v2, v5, v7, v9}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 580
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v2, v5, v7, v9}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 583
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$25;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$25;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 595
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$26;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$26;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 601
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_USER_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    sget-object v9, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v2, v5, v7, v9}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 603
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_closeButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$27;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$27;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_closeButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 610
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BAR_CLOSE_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_closeButton:Landroid/widget/ImageButton;

    new-instance v7, Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v7, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v9, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v2, v5, v7, v9}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 614
    sget v2, Lcom/metamoji/noteanytime/R$id;->subContainerForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    .line 615
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolPageTypeBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    .line 616
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolPageTypeBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnImage:Landroid/widget/ImageView;

    .line 617
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolPageTypeBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnText:Landroid/widget/TextView;

    .line 618
    sget v2, Lcom/metamoji/noteanytime/R$id;->subPresenterIconForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subPresenterIcon:Landroid/widget/ImageView;

    .line 619
    sget v2, Lcom/metamoji/noteanytime/R$id;->subClerkIconForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subClerkIcon:Landroid/widget/ImageView;

    .line 620
    sget v2, Lcom/metamoji/noteanytime/R$id;->subClerkLabelForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subClerkLabel:Landroid/widget/TextView;

    .line 621
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSpeakerIconForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSpeakerIcon:Landroid/widget/ImageView;

    .line 622
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSpeakerLabelForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSpeakerLabel:Landroid/widget/TextView;

    .line 623
    sget v2, Lcom/metamoji/noteanytime/R$id;->subVisitorIconForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorIcon:Landroid/widget/ImageView;

    .line 624
    sget v2, Lcom/metamoji/noteanytime/R$id;->subVisitorLabelForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorLabel:Landroid/widget/TextView;

    .line 625
    sget v2, Lcom/metamoji/noteanytime/R$id;->subInputIndicatorForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subInputIndicator:Landroid/widget/ImageView;

    .line 626
    sget v2, Lcom/metamoji/noteanytime/R$id;->subOutputIndicatorForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subOutputIndicator:Landroid/widget/ImageView;

    .line 627
    sget v2, Lcom/metamoji/noteanytime/R$id;->openButtonForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_openButton:Landroid/widget/ImageButton;

    .line 630
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherModePresenterBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtn:Landroid/widget/FrameLayout;

    .line 631
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherModePresenterBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

    .line 632
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherModePresenterBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    .line 633
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherModeLockBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtn:Landroid/widget/FrameLayout;

    .line 634
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherModeLockBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

    .line 635
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherModeLockBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtnText:Landroid/widget/TextView;

    .line 637
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherMonitoringBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherMonitoringBtn:Landroid/widget/FrameLayout;

    .line 638
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolTeacherMonitoringBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherMonitoringBtnImage:Landroid/widget/ImageView;

    .line 640
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolEditLayerBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

    .line 641
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolEditLayerBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnImage:Landroid/widget/ImageView;

    .line 642
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolEditLayerBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnText:Landroid/widget/TextView;

    .line 643
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolStatusDoItBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusDoItBtn:Landroid/widget/ImageView;

    .line 644
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolStatusHelpBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusHelpBtn:Landroid/widget/ImageView;

    .line 645
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolEveryoneAnswerBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEveryoneAnswerBtn:Landroid/widget/FrameLayout;

    .line 646
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolEveryoneAnswerBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    .line 647
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolEveryoneAnswerBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 648
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v5

    sget-object v7, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-eq v5, v7, :cond_5

    const/high16 v5, 0x41000000    # 8.0f

    .line 649
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 652
    :cond_5
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolStatusCountBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusCountBar:Landroid/view/View;

    .line 653
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolDoItNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolDoItNumLabel:Landroid/widget/TextView;

    .line 655
    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$28;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$28;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolNotYetNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolNotYetNumLabel:Landroid/widget/TextView;

    .line 663
    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$29;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$29;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    sget v2, Lcom/metamoji/noteanytime/R$id;->subSchoolHelpNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolHelpNumLabel:Landroid/widget/TextView;

    .line 671
    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$30;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$30;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherMonitoringBtnImage:Landroid/widget/ImageView;

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_monitoring:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 679
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnImage:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerImage(Lcom/metamoji/nt/NtPageController;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 680
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerSubText(Lcom/metamoji/nt/NtPageController;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 681
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusDoItBtn:Landroid/widget/ImageView;

    invoke-static {v8, v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getStatusDoItImage(ZZ)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 682
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusHelpBtn:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/metamoji/forSchool/ScSchoolUtils;->getStatusHelpImage(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_teachermode_monitoring:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolDoItNumLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    sget v1, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    .line 687
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolDoItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 688
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolNotYetNumLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    sget v1, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    .line 691
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 693
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$31;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$31;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 701
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$32;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$32;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 708
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$33;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$33;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 716
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherMonitoringBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$34;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$34;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherMonitoringBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 725
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$35;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$35;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusDoItBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$36;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$36;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusDoItBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 739
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusHelpBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$37;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$37;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusHelpBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 746
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEveryoneAnswerBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$38;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$38;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEveryoneAnswerBtn:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 756
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 757
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_TEACHERMODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherMonitoringBtn:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 758
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 760
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subPresenterIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$39;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$39;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_openButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$40;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$40;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BAR_OPEN_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_openButton:Landroid/widget/ImageButton;

    new-instance v2, Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 775
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isInitialized:Z

    if-eqz v0, :cond_c

    .line 778
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_7

    .line 779
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    goto :goto_3

    .line 781
    :cond_7
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    .line 783
    :goto_3
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 785
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_9

    .line 787
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateGuidanceCommandState()V

    goto :goto_4

    .line 790
    :cond_9
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 792
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateStatusBtn()V

    .line 794
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateModeArea()V

    .line 796
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateUserCount()V

    .line 798
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSubMemberIcon()V

    .line 802
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeBar$41;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$41;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 812
    :cond_a
    :goto_4
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    if-nez v0, :cond_b

    .line 813
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    .line 815
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_b
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->onWidthChanged()V

    .line 822
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSchoolBtn()V

    .line 827
    :cond_c
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 828
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 829
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 830
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 833
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->onFeatureConditionChanged(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 226
    sget p3, Lcom/metamoji/noteanytime/R$layout;->collabo_mode_bar:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 847
    invoke-super {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onDestroyView()V

    .line 848
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainerForGuidance:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 849
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 850
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_mainContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 851
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onFeatureConditionChanged(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 879
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1751
    new-instance p2, Lcom/metamoji/ns/ui/NsCollaboModeBar$47;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$47;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 861
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainerForGuidance:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subContainer:Landroid/view/View;

    .line 862
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    .line 865
    const-string v0, "m_isInitialized"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isInitialized:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    const-string v0, "m_isSmall"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isSmall:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 867
    const-string v0, "m_isGuidanceMode"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 868
    const-string v0, "m_isShow"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 870
    invoke-super {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public outputIndicator(Z)V
    .locals 4

    .line 1366
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_outputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz p1, :cond_0

    .line 1358
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 p1, 0x2

    .line 1361
    new-array v0, p1, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_outputIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subOutputIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v1, v0, v2

    .line 1362
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 1363
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1366
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1368
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_outputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeBar$44;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$44;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public reloadUserList()V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->updateIndexPathList()V

    .line 1492
    invoke-super {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->reloadUserList()V

    return-void
.end method

.method reloadUserListItem(I)V
    .locals 3

    .line 1586
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1588
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0, v2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public removeStateChangedListener(Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;)V
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->mWidthChangedHandlers:Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ns/NsCollaboUserInfo;

    if-eqz p2, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->remove(Ljava/lang/Object;)V

    .line 1558
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateUserCount()V

    .line 1561
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSubMemberIcon()V

    .line 1564
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->removeUserInfoForSchool(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 1568
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz p2, :cond_1

    .line 1569
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1573
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    .line 1577
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->reloadUserList()V

    return-void
.end method

.method public setTopPadding(I)V
    .locals 4

    .line 1131
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1137
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 901
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 905
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 908
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isShow:Z

    .line 909
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 911
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 913
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->onWidthChanged()V

    return-void
.end method

.method showUserListContextMenu(Landroid/view/View;I)V
    .locals 6

    .line 1669
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    .line 1674
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1678
    :cond_0
    instance-of v1, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v1, :cond_1

    .line 1679
    check-cast v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1680
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    .line 1683
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    .line 1690
    :cond_2
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v1, :cond_3

    .line 1691
    iget v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userContextMenuTargetIsPresenter:Z

    .line 1694
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1696
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    return-void

    .line 1716
    :cond_4
    invoke-virtual {p0, p2}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->reloadUserListItem(I)V

    .line 1719
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    .line 1720
    invoke-interface {p2}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 1721
    sget-object p2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 1723
    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->LEFT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 1725
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$46;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$46;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method

.method showUserListContextMenuOnSection(Landroid/view/View;I)V
    .locals 6

    .line 1620
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->dismissUserContextMenu()V

    .line 1622
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1628
    :cond_0
    instance-of v0, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    if-eqz v0, :cond_1

    .line 1629
    check-cast p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    .line 1630
    iget-object v0, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1635
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1636
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1641
    :cond_3
    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userContextMenuTargetGroupDic:Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    .line 1644
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1646
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->clearUserContextMenuTargetUserId()V

    return-void

    .line 1651
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    .line 1652
    invoke-interface {p2}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 1653
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeBar$45;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$45;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public terminatePanel()V
    .locals 0

    return-void
.end method

.method public updateGuidanceCommandState()V
    .locals 3

    .line 1246
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_isGuidanceMode:Z

    if-nez v0, :cond_0

    return-void

    .line 1250
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1251
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1252
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1253
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subCollaboStartBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1256
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 1258
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolPageTypeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1260
    :goto_1
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1261
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1262
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1263
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1264
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1265
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1266
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1267
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public updateModeArea()V
    .locals 3

    .line 1214
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1215
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v2, :cond_3

    .line 1216
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1219
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_presenter:I

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 1222
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_clerk:I

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1225
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_speaker:I

    goto :goto_0

    .line 1228
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_visitor:I

    goto :goto_0

    .line 1232
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_offline:I

    .line 1236
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSchoolTeacherModeBtn()V

    .line 1238
    invoke-super {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateModeArea()V

    return-void
.end method

.method public updateSchoolEditLayerBtn()V
    .locals 4

    .line 2001
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2005
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 2006
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2010
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 2016
    :cond_2
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerImage(Lcom/metamoji/nt/NtPageController;)I

    move-result v1

    .line 2017
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerText(Lcom/metamoji/nt/NtPageController;)I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 2018
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerSubText(Lcom/metamoji/nt/NtPageController;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 2019
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2020
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2021
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2022
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2024
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2025
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2026
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2027
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2030
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 2031
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2037
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2038
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2039
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2040
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void

    .line 2032
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2033
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2034
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2035
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEditLayerBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public updateSchoolPageTypeBtn(Lcom/metamoji/nt/NtPageController;)V
    .locals 8

    .line 1810
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 1814
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1815
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    .line 1817
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1818
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    .line 1819
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    .line 1826
    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    .line 1828
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnImage(I)I

    move-result v0

    .line 1829
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnTitle(I)I

    move-result v1

    .line 1830
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeSubBtnTitle(I)I

    move-result p1

    .line 1831
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolPageTypeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v3

    goto :goto_2

    .line 1836
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1838
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_offline:I

    .line 1841
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    move v0, p1

    move p1, v3

    move v1, p1

    goto :goto_1

    .line 1844
    :cond_3
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnImage(I)I

    move-result v0

    .line 1845
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnTitle(I)I

    move-result v1

    .line 1846
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeSubBtnTitle(I)I

    move-result p1

    .line 1847
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolPageTypeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v4

    :goto_1
    move v7, v4

    move v4, v3

    move v3, v7

    .line 1853
    :goto_2
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1854
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1855
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1856
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1857
    const-string v0, ""

    if-nez v1, :cond_4

    .line 1858
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1859
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1861
    :cond_4
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    :goto_3
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnText:Landroid/widget/TextView;

    if-nez p1, :cond_5

    .line 1865
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1866
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1868
    :cond_5
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1869
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    if-eqz v3, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const/high16 p1, 0x3f000000    # 0.5f

    .line 1873
    :goto_5
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1874
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1875
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1876
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1877
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1878
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1879
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1880
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPageTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1883
    invoke-direct {p0, v2, v4}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->schoolBtnVisibleChange(Lcom/metamoji/nt/NtCommandManager;Z)V

    return-void
.end method

.method public updateSchoolPersonalModeTypeBtn()V
    .locals 5

    .line 2140
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2146
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->personalModeTypeImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2147
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->personalModeTypeText()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 2149
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 2150
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 2151
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getEveryoneAnswerImage(Lcom/metamoji/nt/NtNoteController;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2153
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2154
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2155
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2156
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2157
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2158
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2159
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2160
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2162
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2164
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 2165
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PERSONAL_MODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 2169
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2170
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2171
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2172
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2173
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2174
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateSchoolStatusBtn(Ljava/lang/String;)V
    .locals 9

    .line 2104
    const-string v0, "doit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    move v6, v2

    goto :goto_0

    .line 2108
    :cond_0
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v6, v1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v2

    move v6, v5

    .line 2116
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2117
    :goto_1
    invoke-static {v5, v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getStatusDoItImage(ZZ)I

    move-result v7

    .line 2118
    invoke-static {v6}, Lcom/metamoji/forSchool/ScSchoolUtils;->getStatusHelpImage(Z)I

    move-result v8

    .line 2120
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v3, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;ZZII)V

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSchoolTeacherModeBtn()V
    .locals 7

    .line 2050
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v1, :cond_3

    .line 2051
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2056
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2058
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2059
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const/16 v0, 0xff

    const/16 v1, 0x45

    const/16 v2, 0x4b

    const/16 v3, 0x54

    .line 2060
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 2061
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 2062
    sget v1, Lcom/metamoji/noteanytime/R$string;->TeacherMode_Presenter:I

    .line 2063
    sget v2, Lcom/metamoji/noteanytime/R$string;->TeacherMode_Lock:I

    .line 2064
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2068
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2070
    sget v2, Lcom/metamoji/noteanytime/R$string;->SCHOOL_RELEASE_FOCUS:I

    move v0, v5

    goto :goto_0

    .line 2071
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2073
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2075
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2077
    sget v1, Lcom/metamoji/noteanytime/R$string;->LEAVE_PRESENTER_TEACHER:I

    move v4, v5

    .line 2079
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v3

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->screenLockChanged(Z)V

    const/high16 v3, 0x42200000    # 40.0f

    .line 2082
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    .line 2083
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->school_mode_presenter:I

    new-instance v6, Lcom/metamoji/cm/Size;

    invoke-direct {v6, v3, v3}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v5, v4, v6}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2084
    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2085
    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2086
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2087
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2088
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2089
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->school_mode_lock:I

    new-instance v4, Lcom/metamoji/cm/Size;

    invoke-direct {v4, v3, v3}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v1, v0, v4}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2090
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2091
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtnText:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2092
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherModeLockBtnText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2093
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2094
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolTeacherModeLockBtnText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateStatusBtn()V
    .locals 5

    .line 1185
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    .line 1187
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    move v1, v3

    .line 1191
    :goto_1
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1192
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subInputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1193
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_outputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1194
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subOutputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 1197
    new-array v1, v0, [Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicator:Landroid/widget/ImageView;

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subInputIndicator:Landroid/widget/ImageView;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_outputIndicator:Landroid/widget/ImageView;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subOutputIndicator:Landroid/widget/ImageView;

    aput-object v4, v1, v2

    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_2

    aget-object v4, v1, v2

    .line 1198
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 1199
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1200
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1205
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSchoolBtn()V

    return-void
.end method

.method updateSubMemberIcon()V
    .locals 7

    .line 1412
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 1417
    iget v6, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    .line 1419
    iget-object v1, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    .line 1422
    :cond_0
    iget v5, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    move v4, v3

    .line 1436
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subPresenterIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    if-eqz v1, :cond_4

    .line 1434
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1436
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1445
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subClerkIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1446
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subClerkLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subClerkLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSpeakerIcon:Landroid/widget/ImageView;

    .line 1451
    const-string v6, "%d"

    if-lez v3, :cond_5

    .line 1452
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1453
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSpeakerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSpeakerLabel:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1456
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1457
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSpeakerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSpeakerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorIcon:Landroid/widget/ImageView;

    if-lez v4, :cond_7

    .line 1463
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1464
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1465
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorLabel:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1467
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1468
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusCountBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1471
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusCountBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1474
    :cond_7
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subVisitorLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusCountBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolDoItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolNotYetNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateUserCount()V
    .locals 3

    .line 1393
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_msgFormat:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1394
    sget v0, Lcom/metamoji/noteanytime/R$string;->ShareBar_Participants_Count:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_msgFormat:Ljava/lang/String;

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userCountLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_msgFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateUserCountForSchool()V

    return-void
.end method

.method public updateUserCountForSchool()V
    .locals 8

    .line 2184
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 2185
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2190
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2191
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2192
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusCountBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2198
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 2201
    iget v6, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2204
    :cond_1
    const-string v6, "doit"

    iget-object v7, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2207
    :cond_2
    const-string v6, "help"

    iget-object v5, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    move v3, v2

    move v4, v3

    .line 2216
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%d"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2218
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2219
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2221
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolDoItNumLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2222
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolNotYetNumLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2223
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolHelpNumLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;II)V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v0, p3}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ns/NsCollaboUserInfo;

    if-eqz p3, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {v0, p3}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->remove(Ljava/lang/Object;)V

    .line 1533
    :cond_0
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeBar$UserListAdapter;->insert(Ljava/lang/Object;I)V

    .line 1536
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSubMemberIcon()V

    .line 1539
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateUserInfoForSchool(Lcom/metamoji/forSchool/ui/ScUserListAdapter;Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 1542
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateUserCountForSchool()V

    return-void
.end method
