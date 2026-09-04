.class public final Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SelectSchoolDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/SelectSchoolDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectSchoolViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "savedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;)V",
        "getSavedStateHandle",
        "()Landroidx/lifecycle/SavedStateHandle;",
        "schoolList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        "getSchoolList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "selectedSchool",
        "getSelectedSchool",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;


# instance fields
.field private final savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

.field private final schoolList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final selectedSchool:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1

    const-string v0, "savedStateHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    .line 37
    const-string v0, "schoolList"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->schoolList:Landroidx/lifecycle/MutableLiveData;

    .line 38
    const-string v0, "selectedSchool"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->selectedSchool:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    return-object v0
.end method

.method public final getSchoolList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->schoolList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSelectedSchool()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->selectedSchool:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
