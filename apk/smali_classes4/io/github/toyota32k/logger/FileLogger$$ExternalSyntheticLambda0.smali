.class public final synthetic Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/github/toyota32k/logger/FileLogger;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/github/toyota32k/logger/FileLogger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;->f$2:Lio/github/toyota32k/logger/FileLogger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/github/toyota32k/logger/FileLogger$$ExternalSyntheticLambda0;->f$2:Lio/github/toyota32k/logger/FileLogger;

    invoke-static {v0, v1, v2, p1}, Lio/github/toyota32k/logger/FileLogger;->cleanupRotatedFiles$lambda$0(Ljava/lang/String;Ljava/lang/String;Lio/github/toyota32k/logger/FileLogger;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
