.class public final Lkotlin/reflect/jvm/internal/KTypeAliasImpl;
.super Ljava/lang/Object;
.source "KTypeAliasImpl.kt"

# interfaces
.implements Lkotlin/reflect/KClassifier;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KTypeAliasImpl;",
        "Lkotlin/reflect/KClassifier;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;",
        "fqName",
        "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
        "<init>",
        "(Lorg/jetbrains/kotlin/name/FqName;)V",
        "getFqName",
        "()Lorg/jetbrains/kotlin/name/FqName;",
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
.field private final fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeAliasImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-void
.end method


# virtual methods
.method public final getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 1

    .line 12
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeAliasImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-object v0
.end method
