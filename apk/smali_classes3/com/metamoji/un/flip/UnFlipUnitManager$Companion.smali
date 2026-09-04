.class public final Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;
.super Ljava/lang/Object;
.source "UnFlipUnitManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/flip/UnFlipUnitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;",
        "",
        "<init>",
        "()V",
        "isFlippableUnit",
        "",
        "flipUnit",
        "Lcom/metamoji/un/flip/UnFlipUnit;",
        "noteController",
        "Lcom/metamoji/nt/NtNoteController;",
        "pageController",
        "Lcom/metamoji/nt/NtPageController;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnitManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "flipUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 270
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    .line 272
    invoke-virtual {p3}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    .line 273
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    .line 275
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_d

    .line 277
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    .line 282
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 283
    invoke-virtual {p3}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p3

    const-string v3, "null cannot be cast to non-null type com.metamoji.nt.NtUnitController"

    if-eq p3, v1, :cond_8

    const/4 v4, 0x2

    if-eq p3, v4, :cond_4

    const/4 p2, 0x3

    if-eq p3, p2, :cond_2

    goto/16 :goto_0

    .line 361
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "system:personal"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 364
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result p2

    if-nez p2, :cond_3

    .line 365
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/nt/NtUnitController;

    .line 366
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p1

    .line 367
    invoke-static {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    return v6

    :cond_3
    return v1

    .line 325
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 326
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz p3, :cond_6

    if-eqz v2, :cond_6

    .line 328
    const-string v4, "group-id"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result p2

    if-nez p2, :cond_5

    .line 332
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/nt/NtUnitController;

    .line 333
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p1

    .line 334
    invoke-static {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result p1

    if-nez p1, :cond_5

    return v6

    :cond_5
    return v1

    :cond_6
    if-eqz p3, :cond_10

    .line 343
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p2

    if-ne p2, v1, :cond_10

    .line 346
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result p2

    if-nez p2, :cond_7

    .line 347
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/nt/NtUnitController;

    .line 348
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p1

    .line 349
    invoke-static {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v1

    .line 286
    :cond_8
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result p3

    if-eqz p3, :cond_9

    return v1

    .line 291
    :cond_9
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 292
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 295
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result p2

    if-nez p2, :cond_a

    .line 296
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/nt/NtUnitController;

    .line 297
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p1

    .line 298
    invoke-static {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result p1

    if-nez p1, :cond_a

    return v6

    :cond_a
    return v1

    :cond_b
    if-eqz p3, :cond_10

    .line 307
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p2

    if-ne p2, v1, :cond_10

    .line 310
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result p2

    if-nez p2, :cond_c

    .line 311
    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/nt/NtUnitController;

    .line 312
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p1

    .line 313
    invoke-static {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result p1

    if-nez p1, :cond_c

    return v6

    :cond_c
    return v1

    :cond_d
    if-eqz v2, :cond_10

    if-eqz v3, :cond_e

    .line 385
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    .line 388
    :cond_e
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p1

    if-nez p1, :cond_10

    .line 389
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p1

    .line 390
    const-string/jumbo p2, "system:common"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 391
    const-string/jumbo p2, "system:edit"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    return v1

    :cond_10
    :goto_0
    return v6
.end method
