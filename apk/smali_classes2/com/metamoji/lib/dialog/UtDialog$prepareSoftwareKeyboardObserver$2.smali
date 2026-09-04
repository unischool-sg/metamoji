.class final synthetic Lcom/metamoji/lib/dialog/UtDialog$prepareSoftwareKeyboardObserver$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UtDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/UtDialog;->prepareSoftwareKeyboardObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/lib/dialog/UtDialog;

    const-string v5, "onSoftwareKeyboardChanged(II)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "onSoftwareKeyboardChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1397
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog$prepareSoftwareKeyboardObserver$2;->invoke(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(II)V
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog$prepareSoftwareKeyboardObserver$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->onSoftwareKeyboardChanged(II)V

    return-void
.end method
