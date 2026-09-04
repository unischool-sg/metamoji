.class public Lcom/metamoji/nt/NtPDFExportRangeTargetPages;
.super Ljava/lang/Object;
.source "NtPDFExportRangeTargetPages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPDFExportRangeTargetPages$INtPDFExportPageProc;
    }
.end annotation


# instance fields
.field protected _context:Lcom/metamoji/nt/NtPDFExportTargetContext;

.field protected _pages:[I


# direct methods
.method public constructor <init>([ILcom/metamoji/nt/NtPDFExportTargetContext;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->_pages:[I

    .line 15
    iput-object p2, p0, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    return-void
.end method


# virtual methods
.method public exportEachPageInDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPDFExportRangeTargetPages$INtPDFExportPageProc;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    iget-object v0, p0, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->_pages:[I

    iput-object v0, p1, Lcom/metamoji/nt/NtPDFExportTargetContext;->pages:[I

    .line 24
    iget-object p1, p0, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->_context:Lcom/metamoji/nt/NtPDFExportTargetContext;

    invoke-interface {p2, p1}, Lcom/metamoji/nt/NtPDFExportRangeTargetPages$INtPDFExportPageProc;->perform(Lcom/metamoji/nt/NtPDFExportTargetContext;)V

    return-void
.end method

.method public getPages()[I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->_pages:[I

    return-object v0
.end method
