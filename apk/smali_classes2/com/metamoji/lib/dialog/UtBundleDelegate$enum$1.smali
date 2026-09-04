.class public final Lcom/metamoji/lib/dialog/UtBundleDelegate$enum$1;
.super Ljava/lang/Object;
.source "UtDialogArgumentDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/UtBundleDelegate;->enum(Ljava/lang/Enum;)Lkotlin/properties/ReadWriteProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialogArgumentDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialogArgumentDelegate.kt\ncom/metamoji/lib/dialog/UtBundleDelegate$enum$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,254:1\n1#2:255\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $def:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtBundleDelegate$enum$1;->$def:Ljava/lang/Enum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 175
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v0, 0x5

    const-string v2, "E"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtBundleDelegate$enum$1;->$def:Ljava/lang/Enum;

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$enum$1;->invoke(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
