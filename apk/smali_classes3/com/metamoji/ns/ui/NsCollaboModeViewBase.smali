.class public abstract Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
.super Landroidx/fragment/app/Fragment;
.source "NsCollaboModeViewBase.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;,
        Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;,
        Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;,
        Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;,
        Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;,
        Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;
    }
.end annotation


# static fields
.field public static final TAG_COLLABOMODEBAR:Ljava/lang/String; = "CollaboModeBar"

.field public static final USERLIST_BGCOLOR_NORMAL:I

.field public static final USERLIST_BGCOLOR_SELECTED:I


# instance fields
.field m_alertDialog:Landroidx/appcompat/app/AlertDialog;

.field m_collaboStartBtn:Landroid/widget/LinearLayout;

.field m_isGuidanceMode:Z

.field m_isInitialized:Z

.field m_isSmall:Z

.field m_mainContainer:Landroid/view/View;

.field m_mainContainerForGuidance:Landroid/view/View;

.field m_schoolDoItNumLabel:Landroid/widget/TextView;

.field m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

.field m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

.field m_schoolEditLayerBtnImage:Landroid/widget/ImageView;

.field m_schoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

.field m_schoolEditLayerBtnText:Landroid/widget/TextView;

.field m_schoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

.field m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

.field m_schoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

.field m_schoolHelpNumLabel:Landroid/widget/TextView;

.field m_schoolNotYetNumLabel:Landroid/widget/TextView;

.field m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

.field m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

.field m_schoolPageTypeBtnImage:Landroid/widget/ImageView;

.field m_schoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

.field m_schoolPageTypeBtnText:Landroid/widget/TextView;

.field m_schoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

.field m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

.field m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

.field m_schoolPersonalModeTypeBtnImage:Landroid/widget/ImageView;

.field m_schoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

.field m_schoolPersonalModeTypeBtnText:Landroid/widget/TextView;

.field m_schoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

.field m_schoolStatusCountBar:Landroid/view/View;

.field m_schoolStatusDoItBtn:Landroid/widget/TextView;

.field m_schoolStatusHelpBtn:Landroid/widget/TextView;

.field m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

.field m_schoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

.field m_schoolTeacherModeLockBtnText:Landroid/widget/TextView;

.field m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

.field m_schoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

.field m_schoolTeacherModePresenterBtnText:Landroid/widget/TextView;

.field m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

.field m_schoolTeacherNumLabel:Landroid/widget/TextView;

.field m_userContextMenuTargetGroupDic:Lcom/metamoji/forSchool/ui/ScUserListSectionData;

.field m_userContextMenuTargetIsPresenter:Z

.field m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

.field m_userList:Landroid/widget/ListView;

.field m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    .line 70
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->USERLIST_BGCOLOR_NORMAL:I

    const/16 v1, 0xf4

    .line 71
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->USERLIST_BGCOLOR_SELECTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 85
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetGroupDic:Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_isGuidanceMode:Z

    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_isSmall:Z

    .line 144
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static creaetNsCollaboModeWindow(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 173
    new-instance p0, Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;-><init>()V

    return-object p0

    .line 175
    :cond_0
    new-instance p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected addSectionUserArray(Ljava/util/List;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 492
    check-cast v0, Ljava/util/Map;

    .line 493
    const-string/jumbo v1, "user-name"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 494
    const-string/jumbo v1, "user-id"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 495
    const-string v1, "class-number"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 496
    const-string v2, "login-name"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 498
    const-string v1, ""

    :cond_1
    move-object v5, v1

    .line 500
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->createSectionUserDic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public addStateChangedListener(Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;)V
    .locals 0

    return-void
.end method

.method public appendRoomUpdateMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->dismissAlert()V

    return-void
.end method

.method public appendUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V
    .locals 0

    return-void
.end method

.method protected appendUserInfoForSchool(Lcom/metamoji/forSchool/ui/ScUserListAdapter;Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 12

    if-eqz p1, :cond_3c

    .line 518
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_16

    .line 522
    :cond_0
    iget-object v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 523
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_16

    .line 527
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getUserClassNumberAndLoginNameCache()Ljava/util/Map;

    move-result-object v0

    .line 528
    iget-object v1, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 529
    iget-object v1, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 530
    const-string v1, "loginName"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 531
    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    iput-object v1, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    .line 534
    :cond_3
    const-string v1, "classNumber"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    iput-object v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->classNumber:Ljava/lang/String;

    .line 543
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 544
    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v0

    .line 545
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 547
    iget-object v6, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 548
    iget-object v7, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    iget-object v7, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v4, v5

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    if-eqz v4, :cond_9

    .line 555
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 556
    iget-object v6, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 558
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 559
    iget-object v9, v8, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v9, :cond_7

    if-eqz v6, :cond_7

    iget-object v9, v8, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 560
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 564
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 565
    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 570
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v0

    move v5, v2

    :goto_3
    if-ge v5, v0, :cond_c

    .line 572
    invoke-virtual {p1, v5}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v6

    .line 573
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 574
    iget-object v9, v8, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 575
    iget-object v10, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 578
    iget-object v7, v8, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    if-nez v7, :cond_b

    .line 581
    invoke-interface {v6, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v4, v8

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    if-nez v4, :cond_10

    .line 590
    iget-object v7, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    iget-object v8, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    iget-object v9, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->classNumber:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->createSectionUserDic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v4

    move v0, v2

    move-object v5, v3

    .line 593
    :goto_4
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ge v0, v6, :cond_11

    .line 594
    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v6

    .line 595
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 596
    iget-object v7, v7, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 597
    iget-object v8, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 600
    iput-object v5, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    :cond_e
    if-eqz v5, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    move-object v5, v3

    .line 614
    :cond_11
    :goto_5
    iget-object v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    iput-object v0, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    .line 615
    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboUserInfo;->clone()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 618
    iget v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_6

    :cond_12
    move v0, v2

    :goto_6
    if-nez v5, :cond_16

    if-nez v0, :cond_15

    if-eqz v4, :cond_13

    .line 625
    iget-object v3, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    :cond_13
    if-eqz v3, :cond_14

    .line 627
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    .line 628
    :cond_14
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .line 627
    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_8

    .line 630
    :cond_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_16
    :goto_8
    if-nez v0, :cond_17

    .line 635
    iget-boolean v3, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_17

    .line 637
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 639
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 641
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v3

    goto :goto_9

    :cond_17
    move v3, v2

    .line 646
    :goto_9
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 647
    const-string v6, "MMJAppMonitorSortOrder"

    const-string/jumbo v7, "userid"

    invoke-static {v6, v7}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 648
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 652
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object p1

    .line 653
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_18

    .line 655
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_18
    if-eqz v0, :cond_29

    .line 658
    iget v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_19

    .line 660
    invoke-interface {p1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 662
    :cond_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-lez v0, :cond_28

    add-int/lit8 v3, v0, -0x1

    .line 664
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 665
    iget-object v5, v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    if-nez v5, :cond_1a

    goto/16 :goto_e

    .line 670
    :cond_1a
    iget v7, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_27

    .line 671
    iget v7, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1b

    goto/16 :goto_f

    .line 675
    :cond_1b
    iget-object v7, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 676
    iget-object v8, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    .line 677
    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    if-eqz v8, :cond_21

    .line 679
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1c

    goto :goto_b

    :cond_1c
    if-eqz v3, :cond_27

    .line 710
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_e

    .line 715
    :cond_1d
    invoke-static {v8}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v5

    .line 716
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    if-eqz v5, :cond_1e

    .line 720
    invoke-static {v8}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-lez v3, :cond_27

    goto :goto_f

    :cond_1e
    if-eqz v7, :cond_1f

    if-nez v5, :cond_1f

    goto :goto_f

    :cond_1f
    if-nez v7, :cond_20

    if-eqz v5, :cond_20

    goto :goto_e

    .line 735
    :cond_20
    invoke-virtual {v8, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_27

    goto :goto_f

    :cond_21
    :goto_b
    if-eqz v3, :cond_22

    .line 681
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_28

    .line 683
    :cond_22
    iget-object v3, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_23

    goto :goto_c

    :cond_23
    move v3, v1

    goto :goto_d

    :cond_24
    :goto_c
    move v3, v2

    :goto_d
    if-nez v6, :cond_25

    move v3, v2

    :cond_25
    if-eqz v3, :cond_26

    .line 693
    iget-object v3, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    iget-object v5, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_27

    goto :goto_f

    .line 698
    :cond_26
    iget-object v3, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    iget-object v5, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_27

    goto :goto_f

    :cond_27
    :goto_e
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 744
    :cond_28
    :goto_f
    invoke-interface {p1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 748
    :cond_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    if-lez v0, :cond_39

    add-int/lit8 v5, v0, -0x1

    .line 750
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 751
    iget-object v7, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    if-nez v7, :cond_2a

    goto/16 :goto_14

    .line 756
    :cond_2a
    iget v8, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2b

    goto/16 :goto_15

    .line 761
    :cond_2b
    iget v8, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_2c

    goto/16 :goto_15

    .line 763
    :cond_2c
    iget v8, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v8, v8, 0x20

    if-nez v8, :cond_38

    .line 764
    iget-object v8, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 765
    iget-object v9, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    .line 766
    iget-object v5, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    if-eqz v9, :cond_32

    .line 768
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2d

    goto :goto_11

    :cond_2d
    if-eqz v5, :cond_38

    .line 801
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2e

    goto/16 :goto_14

    .line 806
    :cond_2e
    invoke-static {v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v7

    .line 807
    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2f

    if-eqz v7, :cond_2f

    .line 810
    invoke-static {v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-lez v5, :cond_38

    goto :goto_15

    :cond_2f
    if-eqz v8, :cond_30

    if-nez v7, :cond_30

    goto :goto_15

    :cond_30
    if-nez v8, :cond_31

    if-eqz v7, :cond_31

    goto :goto_14

    .line 825
    :cond_31
    invoke-virtual {v9, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_38

    goto :goto_15

    :cond_32
    :goto_11
    if-eqz v5, :cond_33

    .line 770
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_39

    .line 773
    :cond_33
    iget-object v5, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    if-eqz v5, :cond_35

    iget-object v5, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_35

    iget-object v5, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    if-eqz v5, :cond_35

    iget-object v5, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_34

    goto :goto_12

    :cond_34
    move v5, v1

    goto :goto_13

    :cond_35
    :goto_12
    move v5, v2

    :goto_13
    if-nez v6, :cond_36

    move v5, v2

    :cond_36
    if-eqz v5, :cond_37

    .line 784
    iget-object v5, v8, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    iget-object v7, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_38

    goto :goto_15

    .line 789
    :cond_37
    iget-object v5, v8, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    iget-object v7, v7, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_38

    goto :goto_15

    :cond_38
    :goto_14
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    :cond_39
    :goto_15
    if-eqz v3, :cond_3b

    .line 837
    iget-boolean p2, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz p2, :cond_3a

    .line 838
    invoke-interface {p1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 840
    :cond_3a
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 843
    :cond_3b
    iget-object p2, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    iput-object p2, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 844
    invoke-interface {p1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3c
    :goto_16
    return-void
.end method

.method public changeBarSize(Z)V
    .locals 0

    return-void
.end method

.method checkShowedUserTableContextMenuEnable()V
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->hasUserContextMenuTargetUserId()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->userTableContextMenuTargetIndexForSchool()Lcom/metamoji/forSchool/ui/ScIndexPath;

    move-result-object v0

    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->dismissUserContextMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method clearUserContextMenuTargetUserId()V
    .locals 2

    .line 435
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->userTableContextMenuTargetIndexForSchool()Lcom/metamoji/forSchool/ui/ScIndexPath;

    move-result-object v0

    const/4 v1, 0x0

    .line 438
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 439
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetGroupDic:Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    const/4 v1, 0x0

    .line 441
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetIsPresenter:Z

    .line 444
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->reloadUserListItemForSchool(Lcom/metamoji/forSchool/ui/ScIndexPath;)V

    return-void
.end method

.method public createScUserListHeader(Landroid/view/View;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;
    .locals 6

    .line 958
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 961
    sget v1, Lcom/metamoji/noteanytime/R$id;->modeIcon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x8

    .line 962
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 965
    sget v1, Lcom/metamoji/noteanytime/R$id;->subIcon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 966
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 969
    sget v1, Lcom/metamoji/noteanytime/R$id;->nickName:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    .line 971
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 975
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    .line 976
    const-string v4, ""

    if-eqz v3, :cond_1

    .line 977
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 979
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v2

    .line 980
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 982
    const-string v5, "group-id"

    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    .line 989
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 990
    const-string p2, "***"

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 992
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p3, :cond_3

    .line 996
    sget p2, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_font_color_offline:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 998
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_font_color_group:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    if-eqz p3, :cond_4

    .line 1002
    sget p2, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_color_offline:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 1004
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_color_group:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1006
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-object p1

    .line 1008
    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public createScUserListUserInfo(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScUserListItemData;)Landroid/view/View;
    .locals 9

    .line 1019
    iget-object v0, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 1021
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1023
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1024
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1027
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1031
    const-string v5, "***"

    const/4 v6, 0x4

    if-nez v0, :cond_4

    .line 1033
    sget v0, Lcom/metamoji/noteanytime/R$id;->modeIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1034
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1035
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1038
    sget v0, Lcom/metamoji/noteanytime/R$id;->nickName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1039
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1042
    iget-object v7, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v7, :cond_1

    iget-object v7, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    iget-object v8, v8, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1044
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1045
    sget v7, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_font_color_normal:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1047
    :cond_1
    sget v7, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_font_color_offline:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    if-eqz v2, :cond_2

    .line 1051
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1053
    :cond_2
    iget-object v2, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    :goto_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->subIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1058
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1059
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1062
    iget-object v0, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v0, :cond_3

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1064
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1065
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_3
    const p2, 0x3e99999a    # 0.3f

    .line 1067
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1071
    :goto_3
    sget p2, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_offline:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1

    .line 1076
    :cond_4
    iget p2, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/2addr p2, v6

    if-eqz p2, :cond_5

    .line 1078
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->collabo_user_presenter:I

    goto :goto_4

    .line 1079
    :cond_5
    iget p2, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_6

    .line 1081
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->school_user_teacher:I

    goto :goto_4

    .line 1084
    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->school_user_student:I

    .line 1086
    :goto_4
    sget v6, Lcom/metamoji/noteanytime/R$id;->modeIcon:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1087
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1091
    sget p2, Lcom/metamoji/noteanytime/R$id;->nickName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1092
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1093
    sget v6, Lcom/metamoji/noteanytime/R$color;->school_userlist_section_font_color_normal:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1094
    iget-boolean v6, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz v6, :cond_7

    .line 1095
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 1097
    :cond_7
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1100
    :goto_5
    iget-boolean v6, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v6, :cond_8

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1101
    :cond_8
    iget-object v6, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1102
    iget-object v6, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    const-string v7, "doit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1104
    sget v6, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 1105
    :cond_9
    iget-object v6, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    const-string v7, "help"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1107
    sget v6, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1112
    :cond_a
    :goto_6
    iget v6, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    move v6, v3

    :goto_7
    if-eqz v2, :cond_c

    if-nez v6, :cond_c

    .line 1113
    iget-boolean v2, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v2, :cond_c

    .line 1114
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1116
    :cond_c
    iget-object v2, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    :goto_8
    iget p2, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_d

    goto :goto_9

    .line 1125
    :cond_d
    iget p2, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    .line 1130
    :goto_9
    sget p2, Lcom/metamoji/noteanytime/R$id;->subIcon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1131
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1132
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1136
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1140
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz p2, :cond_e

    .line 1141
    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_e
    if-eqz v3, :cond_f

    .line 1143
    sget p2, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_selected:I

    goto :goto_a

    :cond_f
    sget p2, Lcom/metamoji/noteanytime/R$color;->school_userlist_bgcolor_normal:I

    .line 1144
    :goto_a
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method

.method protected createSectionUserDic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;
    .locals 1

    .line 505
    new-instance v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScUserListItemData;-><init>()V

    .line 506
    iput-object p1, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 507
    iput-object p2, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 508
    iput-object p3, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    .line 509
    iput-object p4, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    .line 510
    iput-object p5, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->loginName:Ljava/lang/String;

    return-object v0
.end method

.method createUserInfoCtrl(Landroid/view/View;Lcom/metamoji/ns/NsCollaboUserInfo;)Landroid/view/View;
    .locals 3

    .line 334
    iget v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 336
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_user_presenter:I

    goto :goto_0

    .line 337
    :cond_0
    iget v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 339
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_user_clerk:I

    goto :goto_0

    .line 340
    :cond_1
    iget v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 342
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_user_speaker:I

    goto :goto_0

    .line 345
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_user_visitor:I

    .line 347
    :goto_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->modeIcon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 348
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    sget v0, Lcom/metamoji/noteanytime/R$id;->nickName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 352
    iget-object v1, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 357
    :cond_3
    iget v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 358
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->collabo_mark_guest:I

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    .line 360
    :goto_2
    sget v2, Lcom/metamoji/noteanytime/R$id;->subIcon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 361
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-boolean v0, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->isPrivateLayer:Z

    if-eqz v0, :cond_5

    const v0, 0x3e99999a    # 0.3f

    goto :goto_3

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 369
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    iget-object p2, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_6
    if-eqz v1, :cond_7

    .line 372
    sget p2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->USERLIST_BGCOLOR_SELECTED:I

    goto :goto_4

    :cond_7
    sget p2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->USERLIST_BGCOLOR_NORMAL:I

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method

.method dismissAlert()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_alertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_alertDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method dismissUserContextMenu()V
    .locals 1

    .line 399
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->cancelAllMenus()V

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->popupDismissPopup(Z)V

    return-void
.end method

.method public getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetGroupDic:Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    return-object v0
.end method

.method public getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    return-object v0
.end method

.method public getUserList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
            ">;"
        }
    .end annotation

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 927
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 928
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v2

    .line 929
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 930
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUserListForOnlineOrOffline()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1789
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1790
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 1791
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1792
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1793
    iget-object v6, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1794
    iget-object v7, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1795
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 1798
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1799
    iget-object v5, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 1800
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1802
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method handleStartCollaboButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 325
    invoke-static {v0, v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboNewDocument(ZZ)V

    return-void
.end method

.method public hasUserContextMenuTargetUserId()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public initForGuidanceMode()V
    .locals 0

    return-void
.end method

.method public initForShareNoteMode()V
    .locals 0

    return-void
.end method

.method public initializePanel()V
    .locals 0

    return-void
.end method

.method public initializeSchoolUserList()V
    .locals 2

    .line 1503
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    if-eqz v0, :cond_0

    return-void

    .line 1506
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1507
    new-instance v1, Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    .line 1508
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolUserList()V

    return-void
.end method

.method public inputIndicator(Z)V
    .locals 0

    return-void
.end method

.method public isOnlinePersonalId(Ljava/lang/String;Z)Z
    .locals 3

    .line 1814
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getUserListForOnlineOrOffline()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1816
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    .line 1817
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    .line 1818
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtNoteController;->getMemberListForGroupId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1819
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 1820
    const-string/jumbo v2, "user-id"

    invoke-static {p2, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1821
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1822
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 1823
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    .line 1830
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1831
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 1832
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isTeacherForDcUserId(Ljava/lang/String;)Z
    .locals 1

    .line 1176
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->teacherDictionary()Ljava/util/Map;

    move-result-object v0

    .line 1177
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public nextUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;
    .locals 8

    .line 1184
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1187
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->teacherDictionary()Ljava/util/Map;

    move-result-object v1

    .line 1189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 1190
    :goto_0
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1191
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v5, v4}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v5

    .line 1192
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1193
    iget-object v7, v6, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1194
    invoke-virtual {v0, v7}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1195
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1200
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 1201
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1202
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1203
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 1204
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    return-object p1

    .line 1206
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->dismissAlert()V

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onFeatureConditionChanged(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    return-void
.end method

.method public outputIndicator(Z)V
    .locals 0

    return-void
.end method

.method personalModeTypeImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 1741
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1745
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1754
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->personal_mode_teacher_only:I

    goto :goto_0

    .line 1750
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->personal_mode_teacher_and_readonly_student:I

    goto :goto_0

    .line 1747
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->personal_mode_teacher_and_student:I

    :goto_0
    const/high16 v1, 0x42200000    # 40.0f

    .line 1757
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 1758
    invoke-static {v1, v1, v0}, Lcom/metamoji/ui/HoverCm;->makeImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method personalModeTypeText()I
    .locals 2

    .line 1762
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1764
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1766
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1775
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_UNBROWSABLE:I

    return v0

    .line 1771
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_BROWSABLE:I

    return v0

    .line 1768
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EDITABLE:I

    return v0
.end method

.method popupDismissPopup(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->clearUserContextMenuTargetUserId()V

    return-void

    .line 417
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public prevUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;
    .locals 8

    .line 1215
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1218
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->teacherDictionary()Ljava/util/Map;

    move-result-object v1

    .line 1220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 1221
    :goto_0
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1222
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v5, v4}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v5

    .line 1223
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1224
    iget-object v7, v6, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1225
    invoke-virtual {v0, v7}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1226
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1231
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1232
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1233
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v3, :cond_3

    .line 1235
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    return-object p1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 1237
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    return-object p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public reloadUserList()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->notifyDataSetChanged()V

    .line 292
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->checkShowedUserTableContextMenuEnable()V

    return-void
.end method

.method abstract reloadUserListItem(I)V
.end method

.method public reloadUserListItemForSchool(Lcom/metamoji/forSchool/ui/ScIndexPath;)V
    .locals 3

    .line 1707
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1708
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1709
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getPositionFromIndexPath(Lcom/metamoji/forSchool/ui/ScIndexPath;)I

    move-result p1

    .line 1710
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userList:Landroid/widget/ListView;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0, v2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public removeStateChangedListener(Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;)V
    .locals 0

    return-void
.end method

.method public removeUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V
    .locals 0

    return-void
.end method

.method public removeUserInfoForSchool(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 1251
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1252
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v3, v1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v3

    .line 1253
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1255
    iget-object v6, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    .line 1256
    iget-object v7, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget-object v7, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    .line 1258
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    :cond_1
    if-eqz v2, :cond_3

    .line 1265
    iput-object v0, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    .line 1266
    iput-object v0, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 1268
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1272
    iget-object v1, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1274
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1275
    iget-object v5, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1276
    iget-object v6, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    .line 1278
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1279
    iput-object v1, v4, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    .line 1280
    iput-object v0, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 1292
    iget-object p1, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->sectionNo:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 1296
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object p1

    .line 1297
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->sortUserArray(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public resetSchoolUserList()V
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->clear()V

    .line 1679
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->reloadUserList()V

    return-void
.end method

.method public setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1782
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public setTopPadding(I)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method sortUserArray(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
            ">;)V"
        }
    .end annotation

    .line 1360
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1364
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->teacherDictionary()Ljava/util/Map;

    move-result-object v2

    .line 1367
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 1385
    const-string v15, "MMJAppMonitorSortOrder"

    const-string/jumbo v1, "userid"

    invoke-static {v15, v1}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1386
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1390
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-object/from16 v16, v15

    .line 1391
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1392
    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->loginName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->loginName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v0, v17

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v15, :cond_9

    .line 1395
    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1396
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    if-eqz v15, :cond_7

    .line 1397
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    goto :goto_3

    .line 1404
    :cond_3
    invoke-static {v15}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1406
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 1407
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1409
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1412
    :cond_5
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 1413
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1415
    :cond_6
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1398
    :cond_7
    :goto_3
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 1399
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1401
    :cond_8
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1420
    :cond_9
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    if-eqz v15, :cond_e

    .line 1421
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_a

    goto :goto_4

    .line 1428
    :cond_a
    invoke-static {v15}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1430
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    if-eqz v15, :cond_b

    .line 1431
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1433
    :cond_b
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1436
    :cond_c
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    if-eqz v15, :cond_d

    .line 1437
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1439
    :cond_d
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1422
    :cond_e
    :goto_4
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    if-eqz v15, :cond_f

    .line 1423
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1425
    :cond_f
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move v1, v0

    move-object/from16 v15, v16

    goto/16 :goto_0

    :cond_10
    move/from16 v17, v1

    .line 1446
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1447
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1448
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1449
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1450
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1451
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1452
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$NumClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1453
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$StrClassNumberComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v17, :cond_11

    .line 1455
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1456
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1457
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1458
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 1460
    :cond_11
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1461
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1462
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1463
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$UserNameComparator;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1466
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 1469
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1471
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1473
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1476
    invoke-static {v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 1477
    invoke-static {v10}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 1478
    invoke-static {v11}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 1479
    invoke-static {v12}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 1480
    invoke-static {v13}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 1481
    invoke-static {v14}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    :cond_12
    move-object/from16 v0, p1

    .line 1487
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1488
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1489
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1490
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1491
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1492
    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1494
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1495
    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1496
    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1497
    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1498
    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1499
    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method teacherDictionary()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1158
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 1159
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1162
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1163
    const-string/jumbo v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1165
    check-cast v2, Ljava/util/Map;

    .line 1166
    const-string/jumbo v3, "user-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1167
    const-string/jumbo v4, "user-name"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1168
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateGuidanceCommandState()V
    .locals 0

    return-void
.end method

.method public updateModeArea()V
    .locals 0

    return-void
.end method

.method public updateSchoolBtn()V
    .locals 1

    .line 1686
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1687
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1691
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1696
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolPageTypeBtn(Lcom/metamoji/nt/NtPageController;)V

    .line 1697
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolEditLayerBtn()V

    .line 1699
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolPersonalModeTypeBtn()V

    return-void
.end method

.method public abstract updateSchoolEditLayerBtn()V
.end method

.method public abstract updateSchoolPageTypeBtn(Lcom/metamoji/nt/NtPageController;)V
.end method

.method public abstract updateSchoolPersonalModeTypeBtn()V
.end method

.method public abstract updateSchoolStatusBtn(Ljava/lang/String;)V
.end method

.method public abstract updateSchoolTeacherModeBtn()V
.end method

.method public updateSchoolUserList()V
    .locals 11

    .line 1516
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1521
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1525
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1529
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    .line 1549
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->clear()V

    .line 1552
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    new-instance v2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    invoke-direct {v2}, Lcom/metamoji/forSchool/ui/ScUserListSectionData;-><init>()V

    const/4 v3, 0x0

    .line 1566
    iput-object v3, v2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1567
    iput-boolean v4, v2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->visible:Z

    .line 1568
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v5, v2, v1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->addSection(Lcom/metamoji/forSchool/ui/ScUserListSectionData;Ljava/util/List;)V

    .line 1571
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v5

    .line 1574
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1575
    check-cast v6, Ljava/util/Map;

    .line 1576
    const-string v7, "group-id"

    invoke-static {v6, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1577
    const-string v8, "group-name"

    invoke-static {v6, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1578
    const-string/jumbo v9, "user-list"

    invoke-static {v6, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v7, :cond_6

    .line 1579
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 1582
    :cond_4
    const-string v9, "TEACHER"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1585
    invoke-virtual {p0, v1, v6, v4}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->addSectionUserArray(Ljava/util/List;Ljava/util/List;I)V

    .line 1586
    invoke-virtual {p0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->sortUserArray(Ljava/util/List;)V

    goto :goto_1

    .line 1588
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v10, v5, 0x1

    .line 1590
    invoke-virtual {p0, v9, v6, v5}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->addSectionUserArray(Ljava/util/List;Ljava/util/List;I)V

    .line 1591
    invoke-virtual {p0, v9}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->sortUserArray(Ljava/util/List;)V

    .line 1593
    new-instance v5, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    invoke-direct {v5}, Lcom/metamoji/forSchool/ui/ScUserListSectionData;-><init>()V

    .line 1594
    iput-object v8, v5, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    .line 1595
    iput-boolean v4, v5, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->visible:Z

    .line 1596
    iput-object v7, v5, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    .line 1597
    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v6, v5, v9}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->addSection(Lcom/metamoji/forSchool/ui/ScUserListSectionData;Ljava/util/List;)V

    move v5, v10

    goto :goto_1

    :cond_6
    :goto_2
    move-object v3, v6

    goto :goto_1

    .line 1600
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_8

    .line 1603
    invoke-virtual {p0, v0, v3, v5}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->addSectionUserArray(Ljava/util/List;Ljava/util/List;I)V

    .line 1604
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->sortUserArray(Ljava/util/List;)V

    .line 1608
    :cond_8
    new-instance v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    invoke-direct {v1}, Lcom/metamoji/forSchool/ui/ScUserListSectionData;-><init>()V

    .line 1609
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GROUP_NOT_SET:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    .line 1610
    iput-boolean v4, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->visible:Z

    .line 1611
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->addSection(Lcom/metamoji/forSchool/ui/ScUserListSectionData;Ljava/util/List;)V

    .line 1615
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->sortUserArray(Ljava/util/List;)V

    .line 1617
    new-instance v0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScUserListSectionData;-><init>()V

    .line 1618
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_UserList_Section_Offline:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    .line 1619
    iput-boolean v4, v0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->visible:Z

    const/4 v1, 0x1

    .line 1620
    iput-boolean v1, v0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->isOffline:Z

    .line 1621
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->addSection(Lcom/metamoji/forSchool/ui/ScUserListSectionData;Ljava/util/List;)V

    .line 1663
    :cond_9
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1665
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 1666
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboUserInfo;->clone()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->appendUserInfoForSchool(Lcom/metamoji/forSchool/ui/ScUserListAdapter;Lcom/metamoji/ns/NsCollaboUserInfo;)V

    goto :goto_3

    .line 1671
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->reloadUserList()V

    return-void
.end method

.method public updateStatusBtn()V
    .locals 0

    return-void
.end method

.method public abstract updateUserCountForSchool()V
.end method

.method public updateUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;II)V
    .locals 0

    return-void
.end method

.method protected updateUserInfoForSchool(Lcom/metamoji/forSchool/ui/ScUserListAdapter;Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 854
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 855
    invoke-virtual {p1, v1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v2

    .line 856
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 858
    iget-object v4, v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userId:Ljava/lang/String;

    .line 859
    iget-object v5, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboUserInfo;->clone()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object p1

    .line 863
    iput-object p1, v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 865
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->reloadUserList()V

    .line 869
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz p1, :cond_1

    .line 870
    iget-object p1, v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 871
    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    iget-object v1, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 874
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetIsPresenter:Z

    iget p2, p2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eq p1, v0, :cond_4

    .line 876
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->dismissUserContextMenu()V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method userTableContextMenuTargetIndexForSchool()Lcom/metamoji/forSchool/ui/ScIndexPath;
    .locals 6

    .line 1723
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v0, :cond_2

    .line 1724
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 1725
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getSectionCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1726
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getUserListInSection(I)Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 1727
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1728
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1729
    iget-object v5, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1730
    new-instance v0, Lcom/metamoji/forSchool/ui/ScIndexPath;

    invoke-direct {v0, v4, v2}, Lcom/metamoji/forSchool/ui/ScIndexPath;-><init>(II)V

    return-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
