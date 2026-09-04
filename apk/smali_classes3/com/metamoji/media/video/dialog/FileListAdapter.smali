.class public final Lcom/metamoji/media/video/dialog/FileListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MfFileListView.kt"

# interfaces
.implements Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/metamoji/media/video/dialog/FileViewHolder;",
        ">;",
        "Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J.\u0010/\u001a\u0002002\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00101\u001a\u00020)2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207J\u000e\u00108\u001a\u0002002\u0006\u00109\u001a\u00020)J&\u0010:\u001a\u0002002\u0006\u00101\u001a\u00020)2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207J\u000e\u0010;\u001a\u00020\r2\u0006\u0010<\u001a\u00020=J\u0013\u0010>\u001a\u0004\u0018\u00010=2\u0006\u0010?\u001a\u00020\rH\u0086\u0002J\u0018\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\rH\u0016J\u0008\u0010D\u001a\u00020\rH\u0016J\u0018\u0010E\u001a\u0002002\u0006\u0010F\u001a\u00020\u00022\u0006\u0010G\u001a\u00020\rH\u0016J\u0010\u0010H\u001a\u0002002\u0006\u0010F\u001a\u00020\u0002H\u0016R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001c\u001a\u0004\u0008\u001e\u0010\u001aR\u0014\u0010 \u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001aR\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u0006I"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/FileListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/metamoji/media/video/dialog/FileViewHolder;",
        "Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "mInflater",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "mAppendedObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "mUpdatedObserver",
        "mRangeInsertedObserver",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
        "mRangeUpdatedObserver",
        "mRemovedObserver",
        "mTotalLocalSizeObserver",
        "",
        "mOwnerEditModeObserver",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
        "checkDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getCheckDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "checkDrawable$delegate",
        "Lkotlin/Lazy;",
        "xDrawable",
        "getXDrawable",
        "xDrawable$delegate",
        "checkMarkIcon",
        "getCheckMarkIcon",
        "viewModel",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
        "getViewModel",
        "()Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
        "ownerViewModel",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;",
        "v",
        "",
        "busy",
        "getBusy",
        "()Z",
        "setBusy",
        "(Z)V",
        "initialize",
        "",
        "forLocal",
        "currentUserId",
        "",
        "order",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "direction",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "terminate",
        "refreshModel",
        "resetListFor",
        "indexOf",
        "item",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "get",
        "index",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "getItemCount",
        "onBindViewHolder",
        "holder",
        "position",
        "onViewRecycled",
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


# instance fields
.field private final checkDrawable$delegate:Lkotlin/Lazy;

.field private final mAppendedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOwnerEditModeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRangeInsertedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mRangeUpdatedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTotalLocalSizeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

.field private final viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

.field private final xDrawable$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 934
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 939
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mAppendedObserver:Landroidx/lifecycle/Observer;

    .line 946
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mUpdatedObserver:Landroidx/lifecycle/Observer;

    .line 954
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRangeInsertedObserver:Landroidx/lifecycle/Observer;

    .line 963
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRangeUpdatedObserver:Landroidx/lifecycle/Observer;

    .line 970
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRemovedObserver:Landroidx/lifecycle/Observer;

    .line 980
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mTotalLocalSizeObserver:Landroidx/lifecycle/Observer;

    .line 990
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mOwnerEditModeObserver:Landroidx/lifecycle/Observer;

    .line 997
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->checkDrawable$delegate:Lkotlin/Lazy;

    .line 1003
    new-instance v0, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->xDrawable$delegate:Lkotlin/Lazy;

    .line 1027
    sget-object v0, Lcom/metamoji/media/video/dialog/FileItemBase;->Companion:Lcom/metamoji/media/video/dialog/FileItemBase$Companion;

    new-instance v1, Lcom/metamoji/video/AmvFitter;

    sget-object v2, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    new-instance v3, Lcom/metamoji/video/MuSize;

    const/16 v4, 0xa0

    invoke-static {p1, v4}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/metamoji/video/MuSize;-><init>(F)V

    invoke-direct {v1, v2, v3}, Lcom/metamoji/video/AmvFitter;-><init>(Lcom/metamoji/video/FitMode;Lcom/metamoji/video/MuSize;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/FileItemBase$Companion;->setFitter(Lcom/metamoji/video/AmvFitter;)V

    .line 1028
    invoke-static {p1}, Lcom/metamoji/video/AmvUtilsKt;->getActivity(Landroid/content/Context;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    return-void
.end method

.method static final checkDrawable_delegate$lambda$7(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 998
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->mf_icon_checkbox_check:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getCheckDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->checkDrawable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getXDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->xDrawable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static final initialize$lambda$9(Lcom/metamoji/media/video/dialog/FileListAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1045
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyDataSetChanged()V

    .line 1046
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final mAppendedObserver$lambda$0(Lcom/metamoji/media/video/dialog/FileListAdapter;I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 942
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method static final mOwnerEditModeObserver$lambda$6(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 991
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    sget-object v0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->NONE:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->setSelectable(Z)V

    return-void
.end method

.method static final mRangeInsertedObserver$lambda$2(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 956
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;->getFrom()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;->getCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method static final mRangeUpdatedObserver$lambda$3(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;->getFrom()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;->getCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method static final mRemovedObserver$lambda$4(Lcom/metamoji/media/video/dialog/FileListAdapter;I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 972
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemRemoved(I)V

    .line 973
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->update()V

    :cond_0
    return-void
.end method

.method static final mTotalLocalSizeObserver$lambda$5(Lcom/metamoji/media/video/dialog/FileListAdapter;J)V
    .locals 1

    .line 981
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    instance-of v0, p0, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;->getOfflineConsumption()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static final mUpdatedObserver$lambda$1(Lcom/metamoji/media/video/dialog/FileListAdapter;I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 948
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method static final onBindViewHolder$lambda$12(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/FileViewHolder;Landroid/view/View;)V
    .locals 1

    .line 1125
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/metamoji/media/video/dialog/FileListAdapter;->get(I)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1126
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getBusy()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1127
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getSelectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1128
    invoke-interface {p2}, Lcom/metamoji/media/video/dialog/IFileItem;->getSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Lcom/metamoji/media/video/dialog/IFileItem;->setSelected(Z)V

    .line 1129
    invoke-interface {p2}, Lcom/metamoji/media/video/dialog/IFileItem;->getSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1130
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getSelectionCount()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 1132
    :cond_0
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getSelectionCount()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 1134
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemChanged(I)V

    return-void

    .line 1136
    :cond_2
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    if-eqz p0, :cond_3

    .line 1137
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getSelectedItem()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-direct {v0, p2, p1}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;-><init>(Lcom/metamoji/media/video/dialog/IFileItem;I)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static final resetListFor$lambda$10(Lcom/metamoji/media/video/dialog/FileListAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1086
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyDataSetChanged()V

    .line 1087
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final xDrawable_delegate$lambda$8(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1004
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->mf_icon_checkbox_x:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final get(I)Lcom/metamoji/media/video/dialog/IFileItem;
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->get(I)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object p1

    return-object p1
.end method

.method public final getBusy()Z
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCheckMarkIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->UPLOADING:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getCheckDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getXDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    return-object v0
.end method

.method public final indexOf(Lcom/metamoji/media/video/dialog/IFileItem;)I
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->indexOf(Lcom/metamoji/media/video/dialog/IFileItem;)I

    move-result p1

    return p1
.end method

.method public final initialize(Landroid/content/Context;ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentUserId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    new-instance v7, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->initialize(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;ZLkotlin/jvm/functions/Function0;)Z

    .line 1047
    invoke-static {p1}, Lcom/metamoji/video/AmvUtilsKt;->getActivity(Landroid/content/Context;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnAppended()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Landroidx/lifecycle/LifecycleOwner;

    iget-object p4, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mAppendedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p3, p4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1049
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnUpdated()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    iget-object p4, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mUpdatedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p3, p4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1050
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnRangeInserted()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    iget-object p4, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRangeInsertedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p3, p4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1051
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnRangeUpdated()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    iget-object p4, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRangeUpdatedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p3, p4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1052
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnRemoved()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    iget-object p4, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRemovedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p3, p4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1053
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getTotalLocalSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    iget-object p4, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mTotalLocalSizeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p3, p4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    if-eqz v2, :cond_0

    .line 1057
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance p4, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {p4}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast p4, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {p2, p1, p4}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    goto :goto_0

    .line 1059
    :cond_0
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance p4, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {p4}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast p4, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {p2, p1, p4}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    .line 1056
    :goto_0
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    if-eqz p1, :cond_1

    .line 1061
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mOwnerEditModeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p3, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 933
    check-cast p1, Lcom/metamoji/media/video/dialog/FileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/FileListAdapter;->onBindViewHolder(Lcom/metamoji/media/video/dialog/FileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/metamoji/media/video/dialog/FileViewHolder;I)V
    .locals 4

    const-string v0, "@@@ MfFileListView::onBindViewHolder bound! : pos="

    const-string v1, "@@@ MfFileListView::onBindViewHolder no item: pos="

    const-string v2, "holder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;->getMainView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v2, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->get(I)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object v2

    .line 1143
    invoke-virtual {p1, v2}, Lcom/metamoji/media/video/dialog/FileViewHolder;->setItem(Lcom/metamoji/media/video/dialog/IFileItem;)V

    if-eqz v2, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getSelectable()Z

    move-result v1

    move-object v3, p0

    check-cast v3, Lcom/metamoji/media/video/dialog/IFileItem$IconSupplier;

    invoke-interface {v2, p1, p2, v1, v3}, Lcom/metamoji/media/video/dialog/IFileItem;->bind(Lcom/metamoji/media/video/dialog/FileViewHolder;IZLcom/metamoji/media/video/dialog/IFileItem$IconSupplier;)V

    .line 1146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 1148
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@ MfFileListView::onBindViewHolder error: pos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/FileListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/media/video/dialog/FileViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/media/video/dialog/FileViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    new-instance p2, Lcom/metamoji/media/video/dialog/FileViewHolder;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_media_files_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/metamoji/media/video/dialog/FileViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 933
    check-cast p1, Lcom/metamoji/media/video/dialog/FileViewHolder;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->onViewRecycled(Lcom/metamoji/media/video/dialog/FileViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/metamoji/media/video/dialog/FileViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1156
    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/FileViewHolder;->setItem(Lcom/metamoji/media/video/dialog/IFileItem;)V

    .line 1157
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final resetListFor(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 8

    const-string v0, "currentUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    new-instance v7, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/metamoji/media/video/dialog/FileListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;)V

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->initialize(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;ZLkotlin/jvm/functions/Function0;)Z

    return-void
.end method

.method public final setBusy(Z)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final terminate(Z)V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnAppended()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mAppendedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 1069
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnUpdated()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mUpdatedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 1070
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnRangeInserted()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRangeInsertedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 1071
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnRangeUpdated()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRangeUpdatedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 1072
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnRemoved()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mRemovedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 1073
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getTotalLocalSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mTotalLocalSizeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    if-eqz p1, :cond_0

    .line 1075
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->viewModel:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->terminate()V

    .line 1077
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->ownerViewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/FileListAdapter;->mOwnerEditModeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method
