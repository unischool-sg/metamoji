.class final synthetic Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "NumberBinding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
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
        "Ljava/lang/Float;",
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

    const-class v3, Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding$Companion;

    const-string/jumbo v5, "stringToFloat(Ljava/lang/String;)F"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "stringToFloat"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding$Companion;->stringToFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding$1;->invoke(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
