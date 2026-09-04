.class Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/jvm/functions/Function0;

.field private final arg$1:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;->arg$0:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;->arg$1:I

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;->arg$0:Lkotlin/jvm/functions/Function0;

    iget v1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;->arg$1:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->accessor$ConvertFromMetadataKt$lambda3(Lkotlin/jvm/functions/Function0;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
