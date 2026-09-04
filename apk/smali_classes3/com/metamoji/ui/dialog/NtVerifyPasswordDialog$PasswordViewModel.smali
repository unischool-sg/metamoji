.class public final Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NtVerifyPasswordDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PasswordViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0006\u0010*\u001a\u00020\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010!R\u001a\u0010%\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;",
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
        "password",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getPassword",
        "()Landroidx/lifecycle/MutableLiveData;",
        "message",
        "getMessage",
        "hasMessage",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getHasMessage",
        "()Landroidx/lifecycle/LiveData;",
        "okCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getOkCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "cancelCommand",
        "getCancelCommand",
        "title",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "verifyingPassword",
        "getVerifyingPassword",
        "setVerifyingPassword",
        "hashed",
        "getHashed",
        "()Z",
        "setHashed",
        "(Z)V",
        "checkPassword",
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
.field public static final Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;


# instance fields
.field private final cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final hasMessage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hashed:Z

.field public immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

.field private final message:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final okCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final password:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private verifyingPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->password:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->message:Landroidx/lifecycle/MutableLiveData;

    .line 29
    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->hasMessage:Landroidx/lifecycle/LiveData;

    .line 30
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->okCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 31
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 33
    iput-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->title:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->verifyingPassword:Ljava/lang/String;

    return-void
.end method

.method public static final createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object p0

    return-object p0
.end method

.method static final hasMessage$lambda$0(Ljava/lang/String;)Z
    .locals 1

    .line 29
    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final checkPassword()Z
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->hashed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->password:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;->getHashedPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->password:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->verifyingPassword:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getHasMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->hasMessage:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getHashed()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->hashed:Z

    return v0
.end method

.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "immortalTaskContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMessage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->message:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOkCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->okCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getPassword()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->password:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerifyingPassword()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->verifyingPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final setHashed(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->hashed:Z

    return-void
.end method

.method public setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setVerifyingPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->verifyingPassword:Ljava/lang/String;

    return-void
.end method
