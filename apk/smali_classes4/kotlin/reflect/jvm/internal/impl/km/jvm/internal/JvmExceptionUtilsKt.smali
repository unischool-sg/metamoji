.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmExceptionUtilsKt;
.super Ljava/lang/Object;
.source "JvmExceptionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmExceptionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmExceptionUtils.kt\nkotlin/metadata/jvm/internal/JvmExceptionUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n1#2:40\n*E\n"
.end annotation


# direct methods
.method public static final requireNotEmpty(Lkotlin/Metadata;)[Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    const-string v0, "Metadata is missing: kotlin.Metadata.data1 must not be an empty array"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method
