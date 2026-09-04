.class final synthetic Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$build$inflate$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "RecyclerViewBinding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->build(Lcom/metamoji/lib/utils/binding/Binder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/ViewGroup;",
        "TB;>;"
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

    const-class v3, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    const-string v5, "inflate(Landroid/view/ViewGroup;)Ljava/lang/Object;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "inflate"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TB;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$build$inflate$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->inflate(Landroid/view/ViewGroup;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 378
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$build$inflate$1$1;->invoke(Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    return-object p1
.end method
