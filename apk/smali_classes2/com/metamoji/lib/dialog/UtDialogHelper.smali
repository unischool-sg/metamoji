.class public final Lcom/metamoji/lib/dialog/UtDialogHelper;
.super Ljava/lang/Object;
.source "UtDialogHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;,
        Lcom/metamoji/lib/dialog/UtDialogHelper$IRefuge;,
        Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialogHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialogHelper.kt\ncom/metamoji/lib/dialog/UtDialogHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1642#2,10:213\n1915#2:223\n1916#2:225\n1652#2:226\n1642#2,10:227\n1915#2:237\n1916#2:239\n1652#2:240\n1642#2,10:241\n1915#2:251\n1916#2:253\n1652#2:254\n296#2,2:256\n1#3:224\n1#3:238\n1#3:252\n1#3:255\n*S KotlinDebug\n*F\n+ 1 UtDialogHelper.kt\ncom/metamoji/lib/dialog/UtDialogHelper\n*L\n18#1:213,10\n18#1:223\n18#1:225\n18#1:226\n25#1:227,10\n25#1:237\n25#1:239\n25#1:240\n139#1:241,10\n139#1:251\n139#1:253\n139#1:254\n210#1:256,2\n18#1:224\n25#1:238\n139#1:252\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003%&\'B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\nJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0010\u001a\u00020\u000eJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u000cJ\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0010\u001a\u00020\nJ\u0018\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0018\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020!J\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010 \u001a\u00020!J\u000e\u0010$\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u000cR\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialogHelper;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "allDialogs",
        "",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "allDialogsAndMessageBoxes",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "parentDialog",
        "dialog",
        "parentDialogHost",
        "Lcom/metamoji/lib/dialog/IUtDialogHost;",
        "rootDialog",
        "currentDialog",
        "cancelCurrentDialog",
        "",
        "cancelAllDialogs",
        "",
        "refugeAll",
        "Lcom/metamoji/lib/dialog/UtDialogHelper$IRefuge;",
        "forceCloseAllDialogs",
        "childrenOf",
        "findDialog",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "tag",
        "",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "isDialogShown",
        "IRefuge",
        "IDialogRefuge",
        "Refuges"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/UtDialogHelper;-><init>()V

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final allDialogs(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFragments(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 223
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 222
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 18
    instance-of v2, v1, Lcom/metamoji/lib/dialog/UtDialog;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 222
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final allDialogsAndMessageBoxes(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFragments(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 237
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 236
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    instance-of v2, v1, Lcom/metamoji/lib/dialog/IUtDialog;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/metamoji/lib/dialog/IUtDialog;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final cancelAllDialogs(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogsAndMessageBoxes(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/metamoji/lib/utils/CollectionExtKt;->reverse(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/IUtDialog;

    .line 96
    invoke-interface {v0}, Lcom/metamoji/lib/dialog/IUtDialog;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cancelCurrentDialog(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->currentDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->isDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final childrenOf(Lcom/metamoji/lib/dialog/UtDialog;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            ">;"
        }
    .end annotation

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogs(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 173
    check-cast v0, Ljava/lang/Iterable;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 178
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 179
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final currentDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialog;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogs(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;

    return-object p1
.end method

.method public final findDialog(Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialog;
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    .line 200
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialog;

    return-object p1

    .line 201
    :cond_0
    instance-of v0, v0, Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, p1, v1, v0, v1}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    check-cast v1, Lcom/metamoji/lib/dialog/IUtDialog;

    :cond_1
    return-object v1
.end method

.method public final findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    return-object p1
.end method

.method public final findDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;
    .locals 3

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFragments(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/metamoji/lib/dialog/UtDialog;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    return-object v1
.end method

.method public final forceCloseAllDialogs(Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogsAndMessageBoxes(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/metamoji/lib/utils/CollectionExtKt;->reverse(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/IUtDialog;

    .line 159
    invoke-interface {v0}, Lcom/metamoji/lib/dialog/IUtDialog;->forceDismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p1

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 13
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method

.method public final isDialogShown(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFragments(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 210
    instance-of v1, v1, Lcom/metamoji/lib/dialog/IUtDialog;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final parentDialog(Lcom/metamoji/lib/dialog/UtDialog;)Lcom/metamoji/lib/dialog/UtDialog;
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getAsFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogs(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final parentDialogHost(Lcom/metamoji/lib/dialog/IUtDialog;)Lcom/metamoji/lib/dialog/IUtDialogHost;
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/IUtDialog;->getAsFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogsAndMessageBoxes(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 53
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/metamoji/lib/dialog/IUtDialogHost;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialogHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final refugeAll(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialogHelper$IRefuge;
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "beginTransaction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogsAndMessageBoxes(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/lib/utils/CollectionExtKt;->reverse(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 251
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 250
    check-cast v3, Lcom/metamoji/lib/dialog/IUtDialog;

    .line 139
    instance-of v5, v3, Lcom/metamoji/lib/dialog/UtDialog;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/metamoji/lib/dialog/UtDialog;

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/metamoji/lib/dialog/UtDialog;->refuge(Landroidx/fragment/app/FragmentTransaction;)Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_0

    .line 250
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 139
    invoke-static {v2}, Lcom/metamoji/lib/utils/CollectionExtKt;->reverse(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v4

    .line 143
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 144
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 145
    new-instance p1, Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;

    invoke-direct {p1, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper$Refuges;-><init>(Ljava/util/List;)V

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogHelper$IRefuge;

    return-object p1
.end method

.method public final rootDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialog;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->allDialogs(Landroidx/fragment/app/FragmentActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;

    return-object p1
.end method
