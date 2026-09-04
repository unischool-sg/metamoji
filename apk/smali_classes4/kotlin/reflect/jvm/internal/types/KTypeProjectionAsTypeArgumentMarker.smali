.class public final Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;
.super Ljava/lang/Object;
.source "KTypeProjectionAsTypeArgumentMarker.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;",
        "value",
        "Lkotlin/reflect/KTypeProjection;",
        "<init>",
        "(Lkotlin/reflect/KTypeProjection;)V",
        "getValue",
        "()Lkotlin/reflect/KTypeProjection;",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final value:Lkotlin/reflect/KTypeProjection;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KTypeProjection;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;->value:Lkotlin/reflect/KTypeProjection;

    return-void
.end method


# virtual methods
.method public final getValue()Lkotlin/reflect/KTypeProjection;
    .locals 1

    .line 11
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;->value:Lkotlin/reflect/KTypeProjection;

    return-object v0
.end method
