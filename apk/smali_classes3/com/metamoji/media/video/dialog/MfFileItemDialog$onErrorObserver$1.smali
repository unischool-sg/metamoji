.class final synthetic Lcom/metamoji/media/video/dialog/MfFileItemDialog$onErrorObserver$1;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileItemDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onErrorObserver$1;->$tmp0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/lifecycle/Observer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {v0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object v0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Function<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/FunctionReferenceImpl;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onErrorObserver$1;->$tmp0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    const-class v3, Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    const-string v5, "onError(Ljava/lang/Boolean;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onError"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/Function;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {v0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onErrorObserver$1;->$tmp0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$onError(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 454
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onErrorObserver$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
