.class public final Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;
.super Ljava/lang/Object;
.source "LoginPageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginPageViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginPageViewModel.kt\ncom/metamoji/ui/cabinet/user/SelectSchoolViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;",
        "",
        "list",
        "",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        "<init>",
        "(Ljava/util/List;)V",
        "getList",
        "()Ljava/util/List;",
        "status",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;",
        "getStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "selected",
        "",
        "getSelected",
        "()I",
        "setSelected",
        "(I)V",
        "registerObserver",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "Status",
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selected:I

.field private final status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->list:Ljava/util/List;

    .line 95
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;->Busy:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->selected:I

    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getSelected()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->selected:I

    return v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;

    invoke-direct {v2, p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setSelected(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->selected:I

    return-void
.end method
