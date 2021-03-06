import ProductReviewsCard from "./ProductReviewsCard";

function ProductReviews({ productreviews }) {
    return (
        <div className="productreviews-container">
            <h1>Your Product Reviews</h1>
            {
            productreviews.map(productreview => (
              <ProductReviewsCard key={productreviews.id} productreview={productreview}/>
            ))
            }
        </div>
    )
}

export default ProductReviews;