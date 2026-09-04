.class final synthetic Lcom/metamoji/lib/utils/LiveDataExtKt$or$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "LiveDataExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/LiveDataExtKt;->or([Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $args:[Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $med:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/MediatorLiveData;[Landroidx/lifecycle/LiveData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$or$1$1;->$med:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$or$1$1;->$args:[Landroidx/lifecycle/LiveData;

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v4, "or$lambda$28$check(Landroidx/lifecycle/MediatorLiveData;[Landroidx/lifecycle/LiveData;Z)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v3, "check"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/LiveDataExtKt$or$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$or$1$1;->$med:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/metamoji/lib/utils/LiveDataExtKt$or$1$1;->$args:[Landroidx/lifecycle/LiveData;

    invoke-static {v0, v1, p1}, Lcom/metamoji/lib/utils/LiveDataExtKt;->access$or$lambda$28$check(Landroidx/lifecycle/MediatorLiveData;[Landroidx/lifecycle/LiveData;Z)V

    return-void
.end method
