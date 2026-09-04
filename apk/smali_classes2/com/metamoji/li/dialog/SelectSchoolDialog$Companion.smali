.class public final Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;
.super Ljava/lang/Object;
.source "SelectSchoolDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/SelectSchoolDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/li/dialog/SelectSchoolDialog;",
        "owner",
        "Landroidx/fragment/app/FragmentActivity;",
        "schoolList",
        "",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)Lcom/metamoji/li/dialog/SelectSchoolDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;)",
            "Lcom/metamoji/li/dialog/SelectSchoolDialog;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schoolList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/SelectSchoolDialog$SelectSchoolViewModel;->getSchoolList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    new-instance p1, Lcom/metamoji/li/dialog/SelectSchoolDialog;

    invoke-direct {p1}, Lcom/metamoji/li/dialog/SelectSchoolDialog;-><init>()V

    return-object p1
.end method
