.class final synthetic Lcom/metamoji/lib/utils/binding/impl/EditLongBinding$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "NumberBinding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/binding/impl/EditLongBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/lib/utils/binding/impl/EditLongBinding$Companion;

    const-string/jumbo v5, "stringToLong(Ljava/lang/String;)J"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "stringToLong"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/EditLongBinding$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/EditLongBinding$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/EditLongBinding$Companion;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/EditLongBinding$1;->invoke(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
