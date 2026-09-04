.class public final synthetic Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/utils/android/UtFile;


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/utils/android/UtFile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda3;->f$0:Lio/github/toyota32k/utils/android/UtFile;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/UtFile$$ExternalSyntheticLambda3;->f$0:Lio/github/toyota32k/utils/android/UtFile;

    check-cast p1, Ljava/io/FileInputStream;

    invoke-static {v0, p1}, Lio/github/toyota32k/utils/android/UtFile;->copyFrom$lambda$0(Lio/github/toyota32k/utils/android/UtFile;Ljava/io/FileInputStream;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
