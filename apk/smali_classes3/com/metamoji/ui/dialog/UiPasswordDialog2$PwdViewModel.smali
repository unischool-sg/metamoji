.class public final Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "UiPasswordDialog2.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PwdViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;",
        "<init>",
        "()V",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "setImmortalTaskContext",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V",
        "hashedPassword",
        "",
        "getHashedPassword",
        "()Ljava/lang/String;",
        "setHashedPassword",
        "(Ljava/lang/String;)V",
        "pbe",
        "Lcom/metamoji/cm/PBE;",
        "getPbe",
        "()Lcom/metamoji/cm/PBE;",
        "setPbe",
        "(Lcom/metamoji/cm/PBE;)V",
        "password",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "getPassword",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "message",
        "getMessage",
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
.field public static final Companion:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;


# instance fields
.field public hashedPassword:Ljava/lang/String;

.field public immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

.field private final message:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final password:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pbe:Lcom/metamoji/cm/PBE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->Companion:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 37
    const-string v0, ""

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->password:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 38
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->message:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public final getHashedPassword()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->hashedPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hashedPassword"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "immortalTaskContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->message:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getPassword()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->password:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getPbe()Lcom/metamoji/cm/PBE;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->pbe:Lcom/metamoji/cm/PBE;

    return-object v0
.end method

.method public final setHashedPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->hashedPassword:Ljava/lang/String;

    return-void
.end method

.method public setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-void
.end method

.method public final setPbe(Lcom/metamoji/cm/PBE;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->pbe:Lcom/metamoji/cm/PBE;

    return-void
.end method
